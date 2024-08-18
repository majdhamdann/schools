import 'package:get/get.dart';
import 'package:untitled3/models/user.dart';
import 'package:untitled3/moduls/register/registerServer.dart';

class RegisterController extends  GetxController{
  var fullname='';
  var email='';
  var passport='';
  var massege;
  var confirmPassport='';
  var singupstatus=false;
  Registerserver server=Registerserver();
  Future<void> RegisterOnClick  () async{
    User user=User(
      name: fullname,
      email: email,
      password: passport,
      confirmPassport: confirmPassport
      );
    singupstatus=await server.register(user);
    massege=server.massege;
    if(massege is List){
      String temp='';
      for(String s in massege){
        temp += s + '\n';
      }
       massege=temp;
    }
  }

}