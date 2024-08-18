import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Attitudeserver extends GetxService{

   var massege;
   var isload=true.obs;
   var url=Uri.parse('');
 Future<String> getMessageToParent(String token) async {
    var response=await http.get(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      },
    );
    print(response.statusCode); 
    if(response.statusCode==200){
      
    }
    else if(response.statusCode==401){
       
    }
    else{
       
    }
    await Future.delayed(Duration(seconds: 2)); 
    return 'إلى ولي أمر الطالب';  
  }
}