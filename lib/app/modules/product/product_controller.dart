import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:vakinha_burger_api/app/entities/product.dart';
import 'package:vakinha_burger_api/app/repositories/product_repository.dart';

part 'product_controller.g.dart';

class ProductController {
  final _repository = ProductRepository();

  @Route.get('/')
  Future<Response> find(Request request) async {
    try {
      final all = await _repository.findAll();
      return Response.ok(
        jsonEncode(all.map((Product product) => product.toMap()).toList()),
        headers: {
          'content-type': ContentType.json.mimeType,
        },
      );
    } on Exception catch (e, s) {
      print(e);
      print(s);
      return Response.internalServerError();
    }
  }

  Router get router => _$ProductControllerRouter(this);
}
