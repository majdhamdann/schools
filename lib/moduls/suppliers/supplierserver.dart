import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

class SupplierServer{
    var massege;
    var url=Uri.parse('');
  Future<void> getsupplier(String user_token) async{
   var response=await http.get(
      url,
      headers: {
        'Accept':'Application/json'
      },
    );
    print(response.statusCode); 
   
    }}
    
    
    

 