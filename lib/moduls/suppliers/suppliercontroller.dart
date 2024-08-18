import 'package:get/get.dart';
import 'package:untitled3/config/user_info.dart';
import 'package:untitled3/models/assest.dart';
import 'package:untitled3/moduls/suppliers/supplierserver.dart';

class Suppliercontroller extends GetxController{
  SupplierServer _service=SupplierServer();
  List<Datum> suppliersList = [];
  var isload=true.obs;
 @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() async{
    suppliersList=await _service.getsupplier( UserInfo.User_Token);
    isload(false);
    super.onReady();
  }
}