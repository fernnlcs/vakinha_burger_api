import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:vakinha_burger_api/app/core/exceptions/email_already_registered.dart';
import 'package:vakinha_burger_api/app/core/exceptions/user_not_found_exception.dart';
import 'package:vakinha_burger_api/app/entities/user.dart';
import 'package:vakinha_burger_api/app/repositories/user_repository.dart';

part 'auth_controller.g.dart';

class AuthController {
  final _userRepository = UserRepository();

  @Route.post('/register')
  Future<Response> register(Request request) async {
    try {
      final userRequest = User.fromJson(await request.readAsString());
      await _userRepository.save(userRequest);

      return Response(201,
          headers: {'content-type': ContentType.json.mimeType});
    } on EmailAlreadyRegistered catch (e, s) {
      print(e);
      print(s);
      return Response(400,
          body: jsonEncode({'error': 'This e-mail is already registered.'}),
          headers: {'content-type': ContentType.json.mimeType});
    } catch (e, s) {
      print(e);
      print(s);
      return Response.internalServerError();
    }
  }

  @Route.post('/login')
  Future<Response> login(Request request) async {
    final jsonRequest = jsonDecode(await request.readAsString());
    try {
      final user = await _userRepository.login(
          jsonRequest['email'], jsonRequest['password']);

      return Response.ok(user.toJson(),
          headers: {'content-type': ContentType.json.mimeType});
    } on UserNotFoundException catch (e) {
      print(e);
      return Response.forbidden('',
          headers: {'content-type': ContentType.json.mimeType});
    }
  }

  Router get router => _$AuthControllerRouter(this);
}
