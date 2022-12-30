import 'dart:async';
import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:vakinha_burger_api/app/core/services/order_service.dart';
import 'package:vakinha_burger_api/app/core/view_model/order_view_model.dart';
import 'package:vakinha_burger_api/app/entities/order.dart';

part 'order_controller.g.dart';

class OrderController {
  final OrderService _service = OrderService();

  @Route.post('/')
  Future<Response> register(Request request) async {
    OrderViewModel orderViewModel =
        OrderViewModel.fromJson(await request.readAsString());

    Order order = await _service.createOrder(orderViewModel);

    return Response.ok(jsonEncode({'message': 'Pedido criado com sucesso'}));
  }

  Router get router => _$OrderControllerRouter(this);
}
