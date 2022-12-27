import 'package:vakinha_burger_api/app/core/exceptions/email_already_registered.dart';
import 'package:vakinha_burger_api/app/core/exceptions/user_not_found_exception.dart';
import 'package:vakinha_burger_api/app/core/helper/cripty_helper.dart';
import 'package:vakinha_burger_api/app/entities/user.dart';
import 'package:vakinha_burger_api/src/generated/prisma_client.dart' as orm;

class UserRepository {
  final orm.PrismaClient prisma = orm.PrismaClient();

  Future<User> login(String email, String password) async {
    try {
      prisma.$connect();
      final userFound = await prisma.user.findUnique(
        where: orm.UserWhereUniqueInput(
          email: email,
        ),
      );

      if (userFound == null ||
          userFound.password != CriptyHelper.generateSha256Hash(password)) {
        throw UserNotFoundException();
      }

      return User(
        id: userFound.id,
        name: userFound.name,
        email: userFound.email,
        password: '',
      );
    } catch (e) {
      print(e.toString());
      rethrow;
    } finally {
      // await prisma.$disconnect();
    }
  }

  Future<void> save(User user) async {
    try {
      final usersWithSameEmail = await prisma.user.findMany(
        where: orm.UserWhereInput(
          email: orm.PrismaUnion(
            zero: orm.StringFilter(
              equals: user.email,
            ),
          ),
        ),
      );

      if (usersWithSameEmail.isNotEmpty) {
        throw EmailAlreadyRegistered();
      }

      final orm.User prismaUser = await prisma.user.create(
        data: orm.PrismaUnion(
          zero: orm.UserCreateInput(
            name: user.name,
            email: user.email,
            password: CriptyHelper.generateSha256Hash(user.password),
          ),
        ),
      );
      print(prismaUser.toJson());
    } catch (e) {
      print(e.toString());
      rethrow;
    } finally {
      // await prisma.$disconnect();
    }
  }
}
