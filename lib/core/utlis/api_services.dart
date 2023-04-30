import 'package:dio/dio.dart';
import 'package:flutter_bookly_app/core/constants/api_routes.dart';

class ApiService{

  static late Dio dio;
  static init({String? lang, String? token}){

    Map<String, String> headersOption = {
      'Content-Type': ApiRoutes.contentType,
      'Accept': ApiRoutes.contentType,
    };

    if(token != null){
      headersOption['Authorization'] = 'Bearer $token';
    }

    dio = Dio(
      BaseOptions(
        baseUrl: ApiRoutes.baseURL,
        headers: headersOption,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<dynamic> get({
    required String endPoint,
    Map<String, dynamic> query = const {},
    Map<String, dynamic> data = const {},
  }) async {
    Response response = await dio.get(
      endPoint,
      queryParameters: query,
      data: data,
    );
    return response.data;
  }

  static Future<dynamic> post({
    required String endPoint,
    Map<String, dynamic> query = const {},
    Map<String, dynamic> data = const {},
  }) async {
    Response response = await dio.post(
      endPoint,
      queryParameters: query,
      data: data,
    );
    return response.data;
  }

  static Future<dynamic> put({
    required String endPoint,
    Map<String, dynamic> query = const {},
    Map<String, dynamic> data = const {},
  }) async {
    Response response = await dio.put(
      endPoint,
      queryParameters: query,
      data: data,
    );
    return response.data;
  }

  static Future<dynamic> delete({
    required String endPoint,
    Map<String, dynamic> query = const {},
    Map<String, dynamic> data = const {},
  }) async {
    Response response = await dio.delete(
      endPoint,
      queryParameters: query,
      data: data,
    );
    return response.data;
  }
}