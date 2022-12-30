// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:orm/orm.dart';

class OrderItemViewModel implements JsonSerializable {
  int quantity;
  int productId;

  OrderItemViewModel({
    required this.quantity,
    required this.productId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quantity': quantity,
      'productId': productId,
    };
  }

  factory OrderItemViewModel.fromMap(Map<String, dynamic> map) {
    return OrderItemViewModel(
      quantity: map['quantity'] as int,
      productId: map['productId'] as int,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory OrderItemViewModel.fromJson(String source) =>
      OrderItemViewModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
