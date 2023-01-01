import 'package:vakinha_burger_api/app/entities/product.dart';
import 'package:vakinha_burger_api/prisma_client.dart' as orm;

class ProductRepository {
  final orm.PrismaClient prisma = orm.PrismaClient();

  Future<List<Product>> findAll() async {
    List<orm.Product> all = await prisma.product.findMany();

    Iterable<Product> result = all
        .map((orm.Product product) => product.toJson())
        .map(((Map<String, dynamic> map) => Product.fromMap(map)));

    return result.toList();
  }

  Future<Product> findById(int id) async {
    final orm.Product? foundProduct = await prisma.product.findUnique(
      where: orm.ProductWhereUniqueInput(id: id),
    );

    if (foundProduct != null) {
      return Product(
        id: foundProduct.id,
        name: foundProduct.name,
        description: foundProduct.description,
        price: foundProduct.price,
        image: foundProduct.image,
      );
    } else {
      throw Exception();
    }
  }
}
