import 'package:http/http.dart' as http;

class Examserve{
  var massege;

   var url=Uri.parse('');
   Future<void> get_Exam(String token) async{
      var response=await http.get(
      url,
      headers: {
        'Content-Type':'Application/json',
        'Authorization': 'Bearer $token'
      },
      
    );
    print(response.statusCode); 
    print(response.body); 
    
   }
}