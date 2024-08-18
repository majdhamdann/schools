import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/config/Server_Config.dart';
import 'package:untitled3/config/user_info.dart';
import 'package:untitled3/models/user.dart';
import 'package:untitled3/native_sev/secure_storage.dart';
class Loginserver{
  var massege;
  var token;
  var url=Uri.parse("http://192.168.43.58:5010/api/Account/LoginByUsername");
  Future<bool> login(User user ) async{
    var body = <String, dynamic>{};
    body['username'] = user.email;
    body['password'] = user.password;
   var response=await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body)
      
    );
    //print(response.statusCode); 
    if(response.statusCode==200){
      var jsonResponse= jsonDecode(response.body);
      //there msg as back
      massege=jsonResponse['succeeded'];
      //
      Get.offAllNamed('/home');
      EasyLoading.dismiss();
      token=jsonResponse['token'];
      UserInfo.User_Token=token;
      print(token);
      // EasyLoading.showSuccess(massege);
       Get.offNamed('/home');
        EasyLoading.dismiss();
       return true;
    }
     else if(response.statusCode==401){
       var jsonResponse= jsonDecode(response.body);
       massege=jsonResponse['message'];
       //print(jsonResponse['error']);
       //EasyLoading.showError(massege);
       //EasyLoading.dismiss();
       return false;
    }
    else{
       massege=' ';
      return false;
    }

  }
  }