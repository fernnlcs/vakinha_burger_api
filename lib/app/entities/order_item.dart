// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:orm/orm.dart';

import 'package:vakinha_burger_api/app/entities/order.dart';
import 'package:vakinha_burger_api/app/entities/product.dart';

class OrderItem implements JsonSerializable {
  final int id;
  final int quantity;
  final Order order;
  final Product product;

  OrderItem({
    required this.id,
    required this.quantity,
    required this.order,
    required this.product,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'quantity': quantity,
      'order': order.toMap(),
      'product': product.toMap(),
    };
  }

  factory OrderItem.fromMap(Map<String, dynamic> map) {
    return OrderItem(
      id: map['id'] as int,
      quantity: map['quantity'] as int,
      order: Order.fromMap(map['order'] as Map<String, dynamic>),
      product: Product.fromMap(map['product'] as Map<String, dynamic>),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory OrderItem.fromJson(String source) =>
      OrderItem.fromMap(json.decode(source) as Map<String, dynamic>);
}
