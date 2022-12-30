import 'package:vakinha_burger_api/app/core/view_model/order_view_model.dart';
import 'package:vakinha_burger_api/app/entities/order.dart';
import 'package:vakinha_burger_api/app/repositories/order_repository.dart';

class OrderService {
  final OrderRepository _orderRepository = OrderRepository();

  Future<Order> createOrder(OrderViewModel order) async {
    final Future<Order> createdOrder = _orderRepository.save(order);
    return createdOrder;
  }
}
