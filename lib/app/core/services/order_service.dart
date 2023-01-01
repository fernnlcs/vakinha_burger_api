import 'package:vakinha_burger_api/app/core/gerencianet/pix/models/billing.dart';
import 'package:vakinha_burger_api/app/core/gerencianet/pix/models/pix.dart';
import 'package:vakinha_burger_api/app/core/view_model/order_item_view_model.dart';
import 'package:vakinha_burger_api/app/core/view_model/order_view_model.dart';
import 'package:vakinha_burger_api/app/entities/order.dart';
import 'package:vakinha_burger_api/app/entities/product.dart';
import 'package:vakinha_burger_api/app/entities/user.dart';
import 'package:vakinha_burger_api/app/repositories/order_repository.dart';
import 'package:vakinha_burger_api/app/repositories/product_repository.dart';
import 'package:vakinha_burger_api/app/repositories/user_repository.dart';

import '../gerencianet/pix/models/qr_code.dart';

class OrderService {
  final OrderRepository _orderRepository = OrderRepository();
  final UserRepository _userRepository = UserRepository();
  final ProductRepository _productRepository = ProductRepository();
  final Pix _pix = Pix();

  Future<QrCode> createOrder(OrderViewModel order) async {
    final Order createdOrder = await _orderRepository.save(order);
    return await createBilling(createdOrder.id, order);
  }

  Future<QrCode> createBilling(int orderId, OrderViewModel order) async {
    final User user = await _userRepository.findById(order.userId);

    double totalValue = 0.0;
    for (final OrderItemViewModel item in order.items) {
      final Product product = await _productRepository.findById(item.productId);
      totalValue += product.price * item.quantity;
    }

    final String? cpf = order.cpf;
    final double value = totalValue;
    final String name = user.name;
    final Billing billing = await _pix.generateBilling(value, cpf, name, orderId);

    await _orderRepository.updateTransactionId(orderId, billing.transactionId);

    return _pix.getQrCode(billing.locationId);
  }
}
