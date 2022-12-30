// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:orm/orm.dart';

import 'package:vakinha_burger_api/app/entities/order_item.dart';
import 'package:vakinha_burger_api/app/entities/user.dart';

class Order implements JsonSerializable {
  final int id;
  final User user;
  final int? transactionId;
  final String? clientCpf;
  final String deliveryAddress;
  final String status;
  final List<OrderItem> items;

  Order({
    required this.id,
    required this.user,
    this.transactionId,
    this.clientCpf,
    required this.deliveryAddress,
    required this.status,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'user': user.toMap(),
      'transactionId': transactionId,
      'clientCpf': clientCpf,
      'deliveryAddress': deliveryAddress,
      'status': status,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'] as int,
      user: User.fromMap(map['user'] as Map<String, dynamic>),
      transactionId:
          map['transactionId'] != null ? map['transactionId'] as int : null,
      clientCpf: map['clientCpf'] != null ? map['clientCpf'] as String : null,
      deliveryAddress: map['deliveryAddress'] as String,
      status: map['status'] as String,
      items: List<OrderItem>.from(
        (map['items'] as List<int>).map<OrderItem>(
          (x) => OrderItem.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) =>
      Order.fromMap(json.decode(source) as Map<String, dynamic>);
}
