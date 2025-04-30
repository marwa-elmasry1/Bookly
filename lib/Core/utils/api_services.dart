import 'package:bookly/Core/constants.dart';
import 'package:dio/dio.dart';

class ApiServices {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  Future <Map<String,dynamic>> getData(String endPoint) async {
    Response response = await dio.get(endPoint);
    return response.data as Map<String, dynamic>;
  }
}
