// To parse this JSON data, do
//
//     final attendance = attendanceFromJson(jsonString);

import 'dart:convert';

Attendance attendanceFromJson(String str) => Attendance.fromJson(json.decode(str));

String attendanceToJson(Attendance data) => json.encode(data.toJson());

class Attendance {
    AttendanceClass attendance;

    Attendance({
        required this.attendance,
    });

    factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
        attendance: AttendanceClass.fromJson(json["attendance"]),
    );

    Map<String, dynamic> toJson() => {
        "attendance": attendance.toJson(),
    };
}

class AttendanceClass {
    int totalDays;
    int attendanceDays;
    int absenceDays;

    AttendanceClass({
        required this.totalDays,
        required this.attendanceDays,
        required this.absenceDays,
    });

    factory AttendanceClass.fromJson(Map<String, dynamic> json) => AttendanceClass(
        totalDays: json["totalDays"],
        attendanceDays: json["attendanceDays"],
        absenceDays: json["absenceDays"],
    );

    Map<String, dynamic> toJson() => {
        "totalDays": totalDays,
        "attendanceDays": attendanceDays,
        "absenceDays": absenceDays,
    };
}
