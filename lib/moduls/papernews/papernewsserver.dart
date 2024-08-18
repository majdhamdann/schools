import 'package:http/http.dart' as http;

class Papernewsserver{
  var massege;
   var url=Uri.parse('');
   Future<void> get_dayinweek(String token) async{
      var response=await http.get(
      url,
      headers: {
        'Accept':'Application/json',
        'Authorization': 'Bearer $token'
      },
      
    );
    print(response.statusCode); 
    print(response.body); 
     if(response.statusCode==200){

     }
     else if(response.statusCode==400){
      
     }
    
   }
}