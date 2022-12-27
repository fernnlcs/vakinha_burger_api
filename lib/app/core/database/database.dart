import 'package:dotenv/dotenv.dart';
import 'package:mysql1/mysql1.dart';

class Database {
  Future<MySqlConnection> openConnection() async {
    final DotEnv env = DotEnv();
    return MySqlConnection.connect(
      ConnectionSettings(
        host: env['DATABASE_HOST'] ?? env['databaseHost'] ?? '',
        port: int.parse(env['DATABASE_PORT'] ?? env['databasePort'] ?? '3306'),
        password: env['DATABASE_PORT'] ?? env['databasePort'] ?? '',
        db: env['DATABASE_NAME'] ?? env['databaseName'],
      ),
    );
  }
}
