import 'package:dio/dio.dart';
import 'package:three_planets/constants/tp_constants.dart';

class DioConfig {
  static Dio createDio() {
    Dio dio = Dio();

    const kD30 = Duration(seconds: 30);

    dio.options = BaseOptions(
      receiveTimeout: kD30,
      connectTimeout: kD30,
      contentType: 'application/json',
      baseUrl: kUrlBase,
    );
    return dio;
  }
}
