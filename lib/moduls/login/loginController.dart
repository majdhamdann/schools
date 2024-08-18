//import 'dart:ffi';
//import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:untitled3/moduls/login/loginserver.dart';
import 'package:untitled3/models/user.dart';
import 'package:untitled3/native_sev/secure_storage.dart';
//import 'package:untitled3/native_sev/secure_storage.dart';

class LoginController extends GetxController{

  var email;
  var passwort;

  var massege;
  var loginstatus;
  late Loginserver server;
   @override
  Future<void> onInit() async {
    //checkBoxstate=false.obs;
    email='';
    passwort='';
    massege;
   loginstatus=false;
    server=Loginserver();
  
    super.onInit();
  }
  Future<void> LoginOnClick  () async{
    User user=User(
      email: email,
      password: passwort,
      );
    loginstatus=await server.login(user);
    massege=server.massege;
    if (loginstatus) {
      EasyLoading.showSuccess(massege);
      Get.offAllNamed('/home');
      EasyLoading.dismiss();
      }
       else {
        if (massege != null)
          EasyLoading.showError(massege);
          EasyLoading.dismiss();
        }
    if(massege is List){
      String temp='';
      for(String s in massege){
        temp += s + '\n';
      }
       massege=temp;
    }
  }
  void changeBoxstate() async{
  // checkBoxstate(!checkBoxstate.value);
   // this to test only
   //SecureStorage storage=SecureStorage();
    //String? test=await storage.read('token');
   }
    
  

}