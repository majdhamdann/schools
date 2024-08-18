import 'package:http/http.dart' as http;
import 'package:untitled3/models/profile.dart';

class Profileservice {
  var massege;
    var url=Uri.parse('https://m-schools.ertiqasoft.com/api/Account/Profile​');
  Future<Profile?> getprofile(String user_token) async{
   var response=await http.get(
      url,
      headers: {
        'Accept':'Application/json',
        'Authorization': 'Bearer $user_token'
       
      },
    );
    print(response.statusCode); 
    if(response.statusCode==200){
      var data=profileFromJson(response.body);
      return data;
      
    }
    else if(response.statusCode==401){
       print("Unauthorized access - invalid token.");
        return null;
      
    }
    else{
       print("Failed to load profile. Status Code: ${response.statusCode}");
        return null;
    }
  
   
    }
}