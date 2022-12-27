import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dotenv/dotenv.dart';
import 'package:vakinha_burger_api/app/core/gerencianet/gerencianet_rest_client.dart';
import 'package:vakinha_burger_api/app/core/helper/env_helper.dart';

class GerencianetAuthInterceptor extends Interceptor {
  static final DotEnv _env = EnvHelper.env;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final String accessToken = await _login();

    options.headers.addAll({
      'authorization': 'Bearer $accessToken',
      'content-type': ContentType.json.mimeType,
    });

    options.contentType = ContentType.json.mimeType;

    handler.next(options);
  }

  Future<String> _login() async {
    final GerencianetRestClient client = GerencianetRestClient();

    final Map<String, String> headers = {
      'authorization': 'Basic ${_getAuthorization()}',
      'content-type': ContentType.json.mimeType,
    };

    final Response result = await client.post(
      '/oauth/token',
      data: {
        'grant_type': 'client_credentials',
      },
      options: Options(
        headers: headers,
        contentType: ContentType.json.mimeType,
      ),
    );

    return result.data['access_token'];
  }

  String _getAuthorization() {
    final String clientId =
        _env['GERENCIANET_CLIENT_ID'] ?? _env['gerencianetClientId'] ?? '';
    final String clientSecret = _env['GERENCIANET_CLIENT_SECRET'] ??
        _env['gerencianetClientSecret'] ??
        '';

    final List<int> authBytes = utf8.encode('$clientId:$clientSecret');
    return base64Encode(authBytes);
  }
}
