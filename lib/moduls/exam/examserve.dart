import 'package:http/http.dart' as http;
import 'package:untitled3/models/exam.dart';

class Examserve {
  final Uri url = Uri.parse('https://m-schools.ertiqasoft.com/api/Students/Me/Exams');

  Future<Exam?> getExam(String token) async {
    try {
      var response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      
      print('Response Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        var exam = examFromJson(response.body);
        return exam;
      } else {
        print('Failed to load exams. Status code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('An error occurred: $e');
      return null;
    }
  }
}
