import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled3/models/user.dart';
class Splashserver{
  var massege;
  var url=Uri.parse('');
  Future<bool> chekvaild(String token) async{
   var response=await http.get(
      url,
      headers: {
        'Accept':'Application/json',
        'Authorization': 'Bearer $token'
      },
    );
    print(response.statusCode); 
    if(response.statusCode==200){
       return true;
       massege='';
    }
    else if(response.statusCode==401){
       massege='';
       return false;
    }
    else{
       massege='';
       return false;
    }
  }
}