import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';
import 'package:dotenv/dotenv.dart';
import 'package:vakinha_burger_api/app/core/gerencianet/gerencianet_auth_interceptor.dart';
import 'package:vakinha_burger_api/app/core/helper/env_helper.dart';

class GerencianetRestClient extends DioForNative {
  static final DotEnv _env = EnvHelper.env;
  static final BaseOptions _baseOptions = BaseOptions(
    baseUrl: _env['GERENCIANET_URL'] ?? _env['gerencianetUrl'] ?? '',
    connectTimeout: 60000,
    receiveTimeout: 60000,
  );

  GerencianetRestClient() : super(_baseOptions) {
    _configureCertificates();
    interceptors.add(LogInterceptor(responseBody: true));
  }

  GerencianetRestClient auth() {
    interceptors.add(GerencianetAuthInterceptor());
    return this;
  }

  void _configureCertificates() {
    httpClientAdapter = Http2Adapter(
      ConnectionManager(
        onClientCreate: (uri, config) {
          final String root = Directory.current.path;
          final String crtPath = _env['GERENCIANET_CERTIFICATE_CRT'] ??
              _env['gerencianetCertificateCrt'] ??
              '';
          final String keyPath = _env['GERENCIANET_CERTIFICATE_KEY'] ??
              _env['gerencianetCertificateKey'] ??
              '';

          final SecurityContext securityContext =
              SecurityContext(withTrustedRoots: true);
          securityContext.useCertificateChain('$root/$crtPath');
          securityContext.usePrivateKey('$root/$keyPath');

          config.context = securityContext;
        },
      ),
    );
  }
}
