import 'dart:convert';
import 'package:crypto/crypto.dart';

abstract class CriptyHelper {
  static String generateSha256Hash(String text) {
    final bytes = utf8.encode(text);
    return sha256.convert(bytes).toString();
  }
}
