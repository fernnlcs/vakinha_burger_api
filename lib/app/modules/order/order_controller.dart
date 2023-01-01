import 'dart:async';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:vakinha_burger_api/app/core/gerencianet/pix/models/qr_code.dart';
import 'package:vakinha_burger_api/app/core/services/order_service.dart';
import 'package:vakinha_burger_api/app/core/view_model/order_view_model.dart';

part 'order_controller.g.dart';

class OrderController {
  final OrderService _service = OrderService();

  @Route.post('/')
  Future<Response> register(Request request) async {
    OrderViewModel orderViewModel =
        OrderViewModel.fromJson(await request.readAsString());

    final QrCode order = await _service.createOrder(orderViewModel);

    return Response.ok(order.toJson(),
        headers: {'content-type': ContentType.json.mimeType});
  }

  Router get router => _$OrderControllerRouter(this);
}
