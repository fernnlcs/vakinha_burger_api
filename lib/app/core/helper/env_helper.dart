import 'package:dotenv/dotenv.dart';

abstract class EnvHelper {
  static final DotEnv _env = DotEnv();
  static bool _initialized = false;

  static DotEnv get env {
    if (!_initialized) {
      _env.load();
      _initialized = true;
    }
    return _env;
  }
}
