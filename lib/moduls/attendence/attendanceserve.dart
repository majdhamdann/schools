import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled3/models/Absents.dart';
import 'package:untitled3/models/Attendance.dart';

class AttendanceService {
  final Uri url = Uri.parse('https://m-schools.ertiqasoft.com/api/Students/Me/Attendance​');

  Future<Attendance?> getAttendance(String userToken) async {
    try {
      var response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $userToken',
        },
      );

      print(response.statusCode);

      if (response.statusCode == 200) {
        var attendance = attendanceFromJson(response.body);
        return attendance;
      } else {
        print('Failed to load attendance data. Status Code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('An error occurred: $e');
      return null;
    }
  }
  final Uri url1 = Uri.parse('https://m-schools.ertiqasoft.com/api/Students/Me/Absents​');

  Future<Absents?> getabsend(String userToken) async {
    try {
      var response = await http.get(
        url1,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $userToken',
        },
      );

      print(response.statusCode);

      if (response.statusCode == 200) {
        var absents = absentsFromJson(response.body);
        return absents;
      } else {
        print('Failed to load absend data. Status Code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('An error occurred: $e');
      return null;
    }
  }
}
