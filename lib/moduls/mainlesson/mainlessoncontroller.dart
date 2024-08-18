import 'package:get/get.dart';
import 'package:untitled3/config/user_info.dart';
import 'package:untitled3/models/Syllabuses.dart';
import 'package:untitled3/moduls/mainlesson/mainlessonservice.dart';

class Mainlessoncontroller extends GetxController{
  Mainlessonservice _service=Mainlessonservice();
  List<Datum> mainlist = [];
  var isload=true.obs;
 @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() async{
    mainlist=await _service.getmain(UserInfo.User_Token);
    isload(false);
    super.onReady();
  }
}