import 'package:get/get.dart';
import 'package:untitled3/config/user_info.dart';
import 'package:untitled3/moduls/exam/examserve.dart';

class ExamsController extends GetxController {
  Examserve service=Examserve();
  var isload=true.obs;
 @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async{
    var exam= await service.getExam(UserInfo.User_Token);
    isload(false);
    super.onReady();
  }
}
