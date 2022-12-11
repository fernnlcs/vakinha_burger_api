import 'dart:async';
import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:vakinha_burger_api/app/core/exceptions/email_already_registered.dart';
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

      return Response(200, headers: {'content-type': 'application/json'});
    } on EmailAlreadyRegistered catch (e, s) {
      print(e);
      print(s);
      return Response(400,
          body: jsonEncode({'error': 'This e-mail is already registered.'}),
          headers: {'content-type': 'application/json'});
    } catch (e, s) {
      print(e);
      print(s);
      return Response.internalServerError();
    }
  }

  Router get router => _$AuthControllerRouter(this);
}
