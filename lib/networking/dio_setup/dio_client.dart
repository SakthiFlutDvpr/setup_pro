import 'package:dio/dio.dart';

class DioClient {
  late Dio _dio;

  DioClient._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.restful-api.dev',
        headers: {
          'Content-Type': 'application/json',
          'Accept-Type': 'application/json',
        },
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // options.headers['Authorization'] = 'Bearer ${'token'}';
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException error, handler) {
          // if(error.response?.statusCode == 401){

          //   bool refreshed = await refreshToken();
          //   if(refreshed){
          //     return handler.resolve(await dio.fetch(error.requestOptions));
          //   }
          // }

          return handler.next(error);
        },
      ),
    );
  }

  static final DioClient dioClient = DioClient._internal();

  factory DioClient() {
    return dioClient;
  }

  Dio get dio => _dio;
}
