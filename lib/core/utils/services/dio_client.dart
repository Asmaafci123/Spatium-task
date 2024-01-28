import 'dart:developer';

import 'package:dio/dio.dart';

import '../../errors/exceptions.dart';


enum HttpMethod { GET, POST, PUT, DELETE, PATCH }

///using dio client instead of http client has some advantages
/// First, The default value is `JSON`, dio will parse response string to json
/// object automatically, so you don't need to decode response to json.
/// Second, When a error occurs, Dio will wrap the Error/Exception to a DioError
/// this DioError has a type for each error, so you don't need to make conditions
/// to check which type of error depends on error status code.
class DioClient {
  final Dio _dio;

  DioClient(this._dio);

// you can use baseurl with queryParameters instead of full url
  Future<Response> request(
      {required String url,
        required HttpMethod method,
        dynamic data,
        Options? options,
        Map<String, dynamic>? queryParameters}) async {
// Get the response from the server
    try {
      Response response;
      switch (method) {
        case HttpMethod.GET:
          response = await _dio.get(
            url,
            queryParameters: queryParameters,
            options: options
          );
          break;
        case HttpMethod.POST:
          response = await _dio.post(url,
            data: data,
            queryParameters: queryParameters,
            // options: Options(
            //   // validateStatus: (status) {
            //   //   return status! <= 500;
            //   // },
            //   // headers: {
            //   //   'Content_Type': 'application/json',
            //   // },
            // )
            options: Options(contentType: Headers.jsonContentType),
          );
          break;
        case HttpMethod.PUT:
          response = await _dio.put(
            url,
            data: data,
            queryParameters: queryParameters,
            // cancelToken: cancelToken,
          );
          break;
        case HttpMethod.DELETE:
          response = await _dio.delete(
            url,
            data: data,
            queryParameters: queryParameters,
            // cancelToken: cancelToken,
          );
          break;
        case HttpMethod.PATCH:
          response = await _dio.patch(
            url,
            data: data,
            queryParameters: queryParameters,
          );
          break;
      }
      log(response.toString());
      return response;
    } on DioError catch (e) {
      log(e.toString());
      if (e.type == DioErrorType.connectionTimeout ||
          e.type == DioErrorType.sendTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        throw ServerException("something wrong");
      }
      if (e.type == DioErrorType.unknown) {
        throw ServerException("something wrong");
      }
      print(e.type);
      if (e.response != null) {
        print(e.response!.statusCode);
        print(e.response);
        // print(e.response);
        try{
          if (e.response!.data != null && e.response!.data.isNotEmpty) {
            // print('i have data');
            throw ServerException(e.response!.data['message']);
          } else {
            throw ServerException("something wrong");
          }
        } on ServerException catch(e){
          throw ServerException(e.message);
        } catch(e){
          throw ServerException("something wrong");
        }
      }
      throw ServerException("something wrong");
    } catch (e) {
      throw ServerException("something wrong");
    }
  }
}