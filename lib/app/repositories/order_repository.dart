import 'package:vakinha_burger_api/app/core/view_model/order_item_view_model.dart';
import 'package:vakinha_burger_api/app/core/view_model/order_view_model.dart';
import 'package:vakinha_burger_api/app/entities/order.dart';
import 'package:vakinha_burger_api/app/entities/order_item.dart';
import 'package:vakinha_burger_api/app/entities/product.dart';
import 'package:vakinha_burger_api/app/entities/user.dart';
import 'package:vakinha_burger_api/prisma_client.dart' as orm;

class OrderRepository {
  final orm.PrismaClient prisma = orm.PrismaClient();

  Future<Order> save(OrderViewModel order) async {
    orm.Order createdOrder = await prisma.order.create(
      data: orm.OrderCreateInput(
        delivery_address: order.address,
        user: orm.UserCreateNestedOneWithoutOrdersInput(
          connect: orm.UserWhereUniqueInput(id: order.userId),
        ),
        client_cpf: orm.PrismaUnion(zero: order.cpf),
        items: orm.OrderItemCreateNestedManyWithoutOrderInput(
          createMany: orm.OrderItemCreateManyOrderInputEnvelope(
            data: order.items
                .map(
                  (OrderItemViewModel item) =>
                      orm.OrderItemCreateManyOrderInput(
                    quantity: item.quantity,
                    product_id: item.productId,
                  ),
                )
                .toList(),
          ),
        ),
        status: "Pendente",
        transaction_id: orm.PrismaUnion(one: orm.PrismaNull()),
      ),
    );

    orm.User? user = await prisma.user.findUnique(
      where: orm.UserWhereUniqueInput(id: createdOrder.user_id),
    );

    if (user == null) {
      throw Exception();
    }

    Order finalOrder = Order(
      id: createdOrder.id,
      user: User(
        name: user.name,
        email: user.email,
        password: '',
      ),
      deliveryAddress: createdOrder.delivery_address,
      status: createdOrder.status,
      items: [],
    );

    List<orm.OrderItem> items = await prisma.orderItem.findMany(
      where: orm.OrderItemWhereInput(
        order_id: orm.IntFilter(equals: createdOrder.id),
      ),
    );

    finalOrder.items.addAll(
      await Stream.fromIterable(items).asyncMap((orm.OrderItem item) async {
        orm.Product? product = await prisma.product.findUnique(
          where: orm.ProductWhereUniqueInput(
            id: item.product_id,
          ),
        );

        final result = OrderItem(
          id: item.id,
          quantity: item.quantity,
          order: finalOrder,
          product: Product.fromMap(product!.toJson()),
        );

        return result;
      }).toList(),
    );

    return finalOrder;
  }

  Future<void> updateTransactionId(int orderId, String transactionId) async {
    prisma.order.update(
      data: orm.OrderUpdateInput(
        transaction_id: orm.NullableStringFieldUpdateOperationsInput(
          set$: orm.PrismaUnion.zero(transactionId),
        ),
      ),
      where: orm.OrderWhereUniqueInput(id: orderId),
    );
  }
}
