// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:orm/orm.dart';

import 'package:vakinha_burger_api/app/core/view_model/order_item_view_model.dart';

class OrderViewModel implements JsonSerializable {
  int userId;
  String? cpf;
  String address;
  List<OrderItemViewModel> items;

  OrderViewModel({
    required this.userId,
    this.cpf,
    required this.address,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'cpf': cpf,
      'address': address,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  factory OrderViewModel.fromMap(Map<String, dynamic> map) {
    return OrderViewModel(
      userId: map['userId'] as int,
      cpf: map['cpf'] != null ? map['cpf'] as String : null,
      address: map['address'] as String,
      items: List<OrderItemViewModel>.from(
        (map['items'] as List<dynamic>).map<OrderItemViewModel>(
          (x) => OrderItemViewModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory OrderViewModel.fromJson(String source) =>
      OrderViewModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
