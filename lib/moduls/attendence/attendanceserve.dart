import 'package:http/http.dart' as http;
class Attendanceserve{
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
   if(response.statusCode==200){
    
   }
   else if(response.statusCode==400){
    
   }
}
}