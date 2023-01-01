// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:orm/orm.dart';

class Product implements JsonSerializable {
  final int id;
  final String name;
  final String description;
  final double price;
  final String? image;
  
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
