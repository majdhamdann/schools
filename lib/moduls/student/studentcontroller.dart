import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled3/config/user_info.dart';
import 'package:untitled3/moduls/student/studentserver.dart';

class studenttable extends GetxController{
  Studentserver service=Studentserver();
 @override
  void onInit() {
   Studentserver service;
    super.onInit();
  }

  @override
  void onReady() async{
    await service.get_dayinweek(UserInfo.User_Token);
    super.onReady();
  }
}