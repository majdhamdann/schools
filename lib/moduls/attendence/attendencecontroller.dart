import 'package:get/get.dart';
import 'package:untitled3/config/user_info.dart';
import 'package:untitled3/moduls/attendence/attendance.dart';
import 'package:untitled3/moduls/attendence/attendanceserve.dart';

class AttendanceController extends GetxController {
  AttendanceService service=AttendanceService();
  var attendance;
  var absend;
  var isload=true.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async{
    attendance=await service.getAttendance(UserInfo.User_Token);
    absend=await service.getabsend(UserInfo.User_Token);
    isload(false);
    super.onReady();
  }
}
