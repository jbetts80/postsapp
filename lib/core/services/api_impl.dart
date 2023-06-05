import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:postsapp/features/home/domain/services/api.dart';

@Injectable(as: Api)
class ApiImpl implements Api {
  ApiImpl() {
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

  @override
  Future<Map<String, dynamic>> get({required String endpoint, Map<String, dynamic>? params}) async {
    final result = await _dio.get<dynamic>('$_baseUrl$endpoint', queryParameters: params);
    return result.data as Map<String, dynamic>;
  }

  @override
  Future<dynamic> getList({required String endpoint, Map<String, dynamic>? params}) async {
    final result = await _dio.get<dynamic>('$_baseUrl$endpoint', queryParameters: params);
    return result.data;
  }
}
