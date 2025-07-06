import 'package:dio/dio.dart';

class ApiFetch {
  static late Dio dio;

  void initializeDio() {
    dio =
        Dio(
            BaseOptions(
              connectTimeout: const Duration(seconds: 30),
              receiveTimeout: const Duration(seconds: 30),
              contentType: 'application/json',
              responseType: ResponseType.json,
            ),
          )
          ..interceptors.addAll([
            InterceptorsWrapper(
              onRequest: (options, handler) {
                return handler.next(options);
              },
              onResponse: (response, handler) {
                return handler.next(response);
              },
              onError: (DioException e, handler) {
                return handler.next(e);
              },
            ),
          ]);
  }

  Future<dynamic> getApi({
    required String url,
    Map<String, dynamic>? params,
    Map<String, dynamic>? additionalHeaders,
    CancelToken? cancelToken,
  }) async {
    Map<String, dynamic> requestHeader = {...?additionalHeaders};
    try {
      final response = await dio.get(
        url,
        queryParameters: params,
        options: Options(headers: requestHeader),
        cancelToken: cancelToken,
      );
      return response.data;
    } on DioException catch (e) {
      // Optionally rethrow or handle here
      throw Exception('GET request error: ${e.message}');
    }
  }

  Future<dynamic> postApi({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
    Map<String, dynamic>? additionalHeaders,
    CancelToken? cancelToken,
  }) async {
    Map<String, dynamic> requestHeader = {...?additionalHeaders};
    try {
      final response = await dio.post(
        url,
        data: body,
        queryParameters: params,
        options: Options(headers: requestHeader),
        cancelToken: cancelToken,
      );
      return response.data;
    } on DioException catch (e) {
      // Optionally rethrow or handle here
      throw Exception('GET request error: ${e.message}');
    }
  }

  Future<dynamic> putApi({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
    Map<String, dynamic>? additionalHeaders,
    CancelToken? cancelToken,
  }) async {
    Map<String, dynamic> requestHeader = {...?additionalHeaders};
    try {
      final response = await dio.put(
        url,
        data: body,
        queryParameters: params,
        options: Options(headers: requestHeader),
        cancelToken: cancelToken,
      );
      return response.data;
    } on DioException catch (e) {
      // Optionally rethrow or handle here
      throw Exception('GET request error: ${e.message}');
    }
  }

  Future<dynamic> deleteApi({
    required String url,
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
    Map<String, dynamic>? additionalHeaders,
    CancelToken? cancelToken,
  }) async {
    Map<String, dynamic> requestHeader = {...?additionalHeaders};
    try {
      final response = await dio.delete(
        url,
        data: body,
        queryParameters: params,
        options: Options(headers: requestHeader),
        cancelToken: cancelToken,
      );
      return response.data;
    } on DioException catch (e) {
      // Optionally rethrow or handle here
      throw Exception('GET request error: ${e.message}');
    }
  }
}
