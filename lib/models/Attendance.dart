// To parse this JSON data, do
//
//     final attendance = attendanceFromJson(jsonString);

import 'dart:convert';

Attendance attendanceFromJson(String str) => Attendance.fromJson(json.decode(str));

String attendanceToJson(Attendance data) => json.encode(data.toJson());

class Attendance {
    int draw;
    int recordsTotal;
    int recordsFiltered;
    List<Datum> data;

    Attendance({
        required this.draw,
        required this.recordsTotal,
        required this.recordsFiltered,
        required this.data,
    });

    factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
        draw: json["draw"],
        recordsTotal: json["recordsTotal"],
        recordsFiltered: json["recordsFiltered"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "draw": draw,
        "recordsTotal": recordsTotal,
        "recordsFiltered": recordsFiltered,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String id;
    User user;
    Course course;
    Section section;
    DateTime at;

    Datum({
        required this.id,
        required this.user,
        required this.course,
        required this.section,
        required this.at,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        user: User.fromJson(json["user"]),
        course: Course.fromJson(json["course"]),
        section: Section.fromJson(json["section"]),
        at: DateTime.parse(json["at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user": user.toJson(),
        "course": course.toJson(),
        "section": section.toJson(),
        "at": at.toIso8601String(),
    };
}

class Course {
    String id;
    String name;
    String description;
    String type;

    Course({
        required this.id,
        required this.name,
        required this.description,
        required this.type,
    });

    factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "type": type,
    };
}

class Section {
    String id;
    String name;
    dynamic sectionClass;
    dynamic room;
    dynamic teacher;

    Section({
        required this.id,
        required this.name,
        required this.sectionClass,
        required this.room,
        required this.teacher,
    });

    factory Section.fromJson(Map<String, dynamic> json) => Section(
        id: json["id"],
        name: json["name"],
        sectionClass: json["class"],
        room: json["room"],
        teacher: json["teacher"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "class": sectionClass,
        "room": room,
        "teacher": teacher,
    };
}

class User {
    dynamic id;
    dynamic firstName;
    dynamic lastName;
    dynamic userName;
    dynamic email;
    dynamic phoneNumber;

    User({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.userName,
        required this.email,
        required this.phoneNumber,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        userName: json["userName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "userName": userName,
        "email": email,
        "phoneNumber": phoneNumber,
    };
}
