import 'package:untitled3/models/Syllabuses.dart';
import 'package:http/http.dart' as http;

class Mainlessonservice{
  var massege;
    var url=Uri.parse('http://192.168.43.58:5010/api/Syllabuses/DataTables');
  Future<List<Datum>> getmain(String user_token) async{
   var response=await http.get(
      url,
      headers: {
        'Accept':'Application/json',
        'Authorization': 'Bearer $user_token'
       
      },
    );
    print(response.statusCode); 
    if(response.statusCode==200){
      var syllabuses=syllabusesFromJson(response.body);
      return syllabuses.data;
      
    }
    else{
      return[];
    }
  
   
    }
}