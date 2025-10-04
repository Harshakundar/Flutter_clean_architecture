import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:youtube_bloc_cleaning_coding/data/exceptions/app_exceptions.dart';
import 'package:youtube_bloc_cleaning_coding/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
class NetworkServicesApi  implements BaseApiServices{
  final headers={
    'x-api-key':'reqres-free-v1',
  };
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;
    try{
      final response=await http.get(Uri.parse(url)).timeout(Duration(seconds: 50));
      jsonResponse=returnResponse(response);
       
    }
    on SocketException{
      throw NoInternetException('');
    }
    on TimeoutException{
      throw FetchDataException("Time out try again");
    }
    return jsonResponse;
  }
  @override
  Future postApi(String url,var data)async {
    dynamic jsonResponse;
    try{
      final response=await http.post(Uri.parse(url),headers: headers,body: data).timeout(Duration(seconds: 50));
      jsonResponse=returnResponse(response);
       
    }
    on SocketException{
      throw NoInternetException('');
    }
    on TimeoutException{
      throw FetchDataException("Time out try again");
    }
    return jsonResponse;
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    dynamic jsonResponse;
    try{
      final response=await http.delete(Uri.parse(url)).timeout(Duration(seconds: 50));
      jsonResponse=returnResponse(response);
       
    }
    on SocketException{
      throw NoInternetException('');
    }
    on TimeoutException{
      throw FetchDataException("Time out try again");
    }
    return jsonResponse;
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic jsonResponse=jsonDecode(response.body);
        return jsonResponse;
      case 400:
        dynamic jsonResponse=jsonDecode(response.body);
        return jsonResponse;
      case 401:
        throw UnauthorizedException('Error Communication with server'+ response.statusCode.toString());
      case 500:
        throw FetchDataException('Error Communication with server'+ response.statusCode.toString());
      default:
        throw UnauthorizedException();
    }
  }

}