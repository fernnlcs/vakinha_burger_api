import 'package:vakinha_burger_api/app/entities/product.dart';
import 'package:vakinha_burger_api/src/generated/prisma_client.dart' as orm;

class ProductRepository {
  final orm.PrismaClient prisma = orm.PrismaClient();

  Future<List<Product>> findAll() async {
    List<orm.Product> all = await prisma.product.findMany();

    Iterable<Product> result = all
        .map((orm.Product product) => product.toJson())
        .map(((Map<String, dynamic> map) => Product.fromMap(map)));

    return result.toList();
  }
}
