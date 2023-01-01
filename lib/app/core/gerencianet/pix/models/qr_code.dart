import 'dart:convert';

import 'package:orm/orm.dart';

class QrCode implements JsonSerializable {
  String image;
  String code;

  QrCode({
    required this.image,
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'code': code,
    };
  }

  factory QrCode.fromMap(Map<String, dynamic> map) {
    return QrCode(
      image: map['image'] as String,
      code: map['code'] as String,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory QrCode.fromJson(String source) =>
      QrCode.fromMap(json.decode(source) as Map<String, dynamic>);
}
