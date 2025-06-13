import 'dart:io';

import 'package:getx_mvvm/data/exceptions.dart';
import 'package:getx_mvvm/data/network/api_base_services.dart';
import 'package:http/http.dart' as http;
class NetworkApiServices extends BaseApiServices{
  @override
  Future<dynamic> getApi(String url)async{


try{
final response=await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
}
on SocketException{

   }
}

}