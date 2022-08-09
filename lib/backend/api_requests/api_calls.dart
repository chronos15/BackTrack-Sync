import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class LoginCall {
  static Future<ApiCallResponse> call({
    String email = '',
    String password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'http://daycomapi.dtracker.com.br/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class ProductsCall {
  static Future<ApiCallResponse> call({
    String accessToken = '',
    int page,
    String id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'products',
      apiUrl: 'http://daycomapi.dtracker.com.br/api/products',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'page': page,
        'id': id,
      },
      returnBody: true,
    );
  }

  static dynamic jSONPath1(dynamic response) => getJsonField(
        response,
        r'''$.data[?(@.id == 2291)]''',
      );
}

class ClientesCall {
  static Future<ApiCallResponse> call({
    String accessToken = '',
    int page,
    String id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'clientes',
      apiUrl: 'http://daycomapi.dtracker.com.br/api/customers',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'page': page,
        'id': id,
      },
      returnBody: true,
    );
  }
}
