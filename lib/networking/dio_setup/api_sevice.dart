import 'package:dio/dio.dart';
import 'package:setup_pro/networking/dio_setup/dio_client.dart';

class ApiService {
  DioClient dioClient = DioClient();

  Future<Response> getData(String endPoint) async {
    return await dioClient.dio.get(endPoint);
  }

  Future postData(String endPoint, Map data) async {
    await dioClient.dio.post(endPoint, data: data);
  }
}
