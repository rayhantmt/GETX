import 'dart:convert';
import 'dart:io';

import 'package:getx_mvvm/data/exceptions.dart';
import 'package:getx_mvvm/data/network/api_base_services.dart';
import 'package:http/http.dart' as http;
class NetworkApiServices extends BaseApiServices{
  @override
  Future<dynamic> getApi(String url)async{
dynamic responseJson;

try{
final response=await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));

responseJson=returnResponse(response);
}
on SocketException{
throw InternetException('');

   }
   on RequestTimeoutException{
    throw RequestTimeoutException('');
   }

   return responseJson;
}


              





 @override
  Future<dynamic> PostApi(var data, String url)async{
   dynamic responseJson;

try{
final response=await http.post(Uri.parse(url),
  body: jsonEncode(data)
  ).timeout(Duration(seconds: 10));

responseJson=returnResponse(response);
}
on SocketException{
throw InternetException('');

   }
   on RequestTimeoutException{
    throw RequestTimeoutException('');
   }

   return responseJson;
}


dynamic returnResponse(http.Response response){
switch(response.statusCode){
  case 200:
  dynamic responseJson =jsonDecode(response.body);
  
  case 400:
  throw InvalidUrlException('');

  default:
  throw FetchDataException('Error while communicating'+response.statusCode.toString());
}


}
}