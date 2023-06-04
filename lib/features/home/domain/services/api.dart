abstract class Api {
  Future<Map<String, dynamic>> get({required String endpoint, Map<String, dynamic>? params});
  Future<dynamic> getList({required String endpoint, Map<String, dynamic>? params});
}
