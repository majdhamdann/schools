import 'package:http/http.dart' as http;

class Examserve{
  var massege;

   var url=Uri.parse('https://m-schools.ertiqasoft.com/');
   Future<void> get_Exam(String token) async{
      var response=await http.get(
      url,
      headers: {
        'Content-Type':'application/json',
        'Authorization': 'Bearer $token'
      },
      
    );
    print(response.statusCode); 
    print(response.body); 
    
   }
}