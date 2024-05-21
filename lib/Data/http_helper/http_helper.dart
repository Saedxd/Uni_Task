import 'dart:convert';
import 'dart:developer';




import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import 'Ihttp_helper.dart';
import 'dart:io';
import 'dart:core';

class HttpHelper implements IHttpHelper {
  Dio? _dio;

  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
    _dio!.interceptors.add(CookieManager(cookieJar));


  }

  @override
  Future Register(String Email, String Password, String name, String mobileNumber, int code, String fcm_token) {
    // TODO: implement Register
    throw UnimplementedError();
  }

  //
  // @override
  // Future<UserDataModel> Register(String Email,String Password,String name,String mobileNumber,int code,String fcm_token)async{
  //   try {
  //         final formData = {
  //           "name":name,
  //           "email":Email,
  //           "mobile_number":mobileNumber,
  //           "password":Password,
  //           "passwordConfirm":Password,
  //           "code":code,
  //           "fcm_token":fcm_token,
  //         };
  //
  //
  //     final response = await _dio!
  //         .post('/users/register',data: formData, options: Options(headers: {
  //       "Accept" :"application/json"
  //     }));
  //
  //
  //     if (response.statusCode == 200){
  //
  //       final baseResponse = serializers.deserialize(json.decode(response.data),
  //           specifiedType: const FullType(
  //             UserDataModel,
  //             [
  //               FullType(
  //                 BuiltList,
  //                 [
  //                   FullType(UserDataModel),
  //                 ],
  //               ),
  //             ],
  //           )) as UserDataModel;
  //
  //       return baseResponse;
  //     }else{
  //       print("NetworkException 1st");
  //       throw NetworkException();
  //     }
  //   } on SocketException catch (e) {
  //     throw NetworkException();
  //   } catch (e) {
  //     print("NetworkException 2ed");
  //     print(e);
  //     throw NetworkException();
  //   }
  // }


}

class NetworkException implements Exception {}
