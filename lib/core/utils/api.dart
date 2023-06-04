import 'package:dio/dio.dart';

class Api {
  Api() {
    _baseUrl = 'https://jsonplaceholder.typicode.com/';
    const timeout = Duration(seconds: 10);
    _dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: timeout,
        receiveTimeout: timeout,
        contentType: 'application/json',
      ),
    );
  }

  late Dio _dio;
  late final String _baseUrl;

  Future<Map<String, dynamic>> get({required String endpoint, Map<String, dynamic>? params}) async {
    final result = (await _dio.get<dynamic>('$_baseUrl$endpoint', queryParameters: params)).data as Map<String, dynamic>;
    return result['data'] as Map<String, dynamic>;
  }

  Future<List<Map<String, dynamic>>> getList({required String endpoint, Map<String, dynamic>? params}) async {
    final result = (await _dio.get<dynamic>('$_baseUrl$endpoint', queryParameters: params)).data as Map<String, dynamic>;
    return result['data'] as List<Map<String, dynamic>>;
  }
}
