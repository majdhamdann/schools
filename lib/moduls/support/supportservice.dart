import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/models/assest.dart';

class Supportservice{
    var massege;
    var url=Uri.parse('http://192.168.43.58:5010/api/Assets/DataTables');
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
    
    
    

 