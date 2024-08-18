import 'package:get/get.dart';
import 'package:untitled3/config/user_info.dart';
import 'package:untitled3/moduls/suppliers/supplierserver.dart';

class Suppliercontroller extends GetxController{
  SupplierServer _service=new SupplierServer();
 @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() async{
    await _service.getsupplier( UserInfo.User_Token);
    super.onReady();
  }
}