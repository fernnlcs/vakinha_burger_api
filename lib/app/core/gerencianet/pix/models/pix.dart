import 'package:dio/dio.dart';
import 'package:vakinha_burger_api/app/core/gerencianet/gerencianet_rest_client.dart';
import 'package:vakinha_burger_api/app/core/gerencianet/pix/models/billing.dart';
import 'package:vakinha_burger_api/app/core/gerencianet/pix/models/qr_code.dart';
import 'package:vakinha_burger_api/app/core/helper/env_helper.dart';

class Pix {
  Future<Billing> generateBilling(
      double value, String? cpf, String? name, int orderId) async {
    try {
      final GerencianetRestClient restClient = GerencianetRestClient();
      final Map<String, Object?> billingData = {
        'calendario': {'expiracao': 3600},
        'devedor': {'cpf': cpf, 'nome': name},
        'valor': {'original': '$value'},
        'chave': EnvHelper.env['gerencianetPixKey'],
        'solicitacaoPagador': 'Pedido de número $orderId no Vakinha Burger',
        'infoAdicionais': [
          {'nome': 'orderId', 'valor': '$orderId'}
        ]
      };

      final Response billingResponse = await restClient.auth().post(
            '/v2/cob',
            data: billingData,
          );

      final billingResponseData = billingResponse.data;

      return Billing(
        transactionId: billingResponseData['txid'],
        locationId: billingResponseData['loc']['id'],
      );
    } on DioError catch (e, s) {
      print(e.response);
      print(s);
      rethrow;
    }
  }

  Future<QrCode> getQrCode(int locationId) async {
    try {
      final GerencianetRestClient restClient = GerencianetRestClient();
      final Response response =
          await restClient.auth().get('/v2/loc/$locationId/qrcode');
      final dynamic responseData = response.data;

      return QrCode(
        image: responseData['imagemQrcode'],
        code: responseData['qrcode'],
      ); 
    } on DioError catch (e, s) {
      print(e.response);
      print(s);
      rethrow;
    }
  }
}
