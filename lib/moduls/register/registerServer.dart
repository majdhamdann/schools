import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled3/models/user.dart';
class Registerserver{
  var massege;
  var url=Uri.parse('');
  Future<bool> register(User user) async{
   var response=await http.post(
      url,
      headers: {
        'Accept':'Application/json'
      },
      body: {
        'name':user.name,
        'email':user.email,
         'passport':user.password,
         'confirmPassport':user.confirmPassport
       }
    );
    print(response.statusCode); 
    if(response.statusCode==200){
      var jsonResponse= jsonDecode(response.body);
      //there msg as back
      massege=jsonResponse['msg'];

       return true;
    }
    else if(response.statusCode==422){
      var jsonResponse= jsonDecode(response.body);
      //there error as back
      massege=jsonResponse['error'];
      ///print(jsonResponse['error']);
       return false;
    }
    else{
      return false;
    }

  }
}