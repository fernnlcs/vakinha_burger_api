import 'package:mysql1/mysql1.dart';
import 'package:vakinha_burger_api/app/core/database/database.dart';
import 'package:vakinha_burger_api/app/core/exceptions/email_already_registered.dart';
import 'package:vakinha_burger_api/app/core/helper/cripty_helper.dart';
import 'package:vakinha_burger_api/app/entities/user.dart';

class UserRepository {
  Future<void> save(User user) async {
    MySqlConnection? conn;
    try {
      conn = await Database().openConnection();

      final isUserRegistered = await conn.query(
        'select * from usuario where email = ?',
        [user.email],
      );

      if (isUserRegistered.isEmpty) {
        await conn.query(''' 
        insert into usuario values(?, ?, ?, ?)
        ''', [
          null,
          user.name,
          user.email,
          CriptyHelper.generateSha256Hash(user.password),
        ]);
      } else {
        throw EmailAlreadyRegistered();
      }
    } on MySqlException catch (e, s) {
      print(e);
      print(s);
      rethrow;
    } finally {
      await conn?.close();
    }
  }
}
