import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/models/assest.dart';

class SupplierServer{
    var massege;
    var url=Uri.parse('https://m-schools.ertiqasoft.com/api/Assets/DataTables');
  Future<List<Datum>> getsupplier(String user_token) async{
   var response=await http.get(
      url,
      headers: {
        'Accept':'Application/json',
        'Authorization': 'Bearer $user_token'
       
      },
    );
    print(response.statusCode); 
    if(response.statusCode==200){
      var assest=assetsFromJson(response.body);
      return assest.data;
      
    }
    else{
      return[];
    }
  
   
    }}
    
    
    

 