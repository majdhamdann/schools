import 'package:get/get.dart';
import 'package:untitled3/config/user_info.dart';
import 'package:untitled3/moduls/attitude/attitudeserver.dart';

class Attitudecontroller extends GetxController{
  Attitudeserver _service=Attitudeserver();
   var messageToParent = ''.obs;  

  @override
  void onInit() {
    super.onInit();
    fetchMessage();
  }

  void fetchMessage() async {
    messageToParent.value = await _service.getMessageToParent(UserInfo.User_Token);
  }
}