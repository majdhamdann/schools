import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled3/config/user_info.dart';
import 'package:untitled3/moduls/profile/profileservice.dart';

class Profilecontroller extends GetxController{
  Profileservice _service=Profileservice();
  var profile;
  var isload=true.obs;
 @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() async{
    profile= await _service.getprofile( UserInfo.User_Token);
    isload(false);
    super.onReady();
  }
}