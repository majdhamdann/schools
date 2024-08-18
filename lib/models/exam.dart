// To parse this JSON data, do
//
//     final exams = examsFromJson(jsonString);

import 'dart:convert';

Exams examsFromJson(String str) => Exams.fromJson(json.decode(str));

String examsToJson(Exams data) => json.encode(data.toJson());

class Exams {
    int draw;
    int recordsTotal;
    int recordsFiltered;
    List<Datum> data;

    Exams({
        required this.draw,
        required this.recordsTotal,
        required this.recordsFiltered,
        required this.data,
    });

    factory Exams.fromJson(Map<String, dynamic> json) => Exams(
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
    String name;
    String description;
    int mark;
    int passMark;
    DateTime startsAt;
    DateTime endsAt;
    Course course;

    Datum({
        required this.name,
        required this.description,
        required this.mark,
        required this.passMark,
        required this.startsAt,
        required this.endsAt,
        required this.course,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        description: json["description"],
        mark: json["mark"],
        passMark: json["passMark"],
        startsAt: DateTime.parse(json["startsAt"]),
        endsAt: DateTime.parse(json["endsAt"]),
        course: Course.fromJson(json["course"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "mark": mark,
        "passMark": passMark,
        "startsAt": startsAt.toIso8601String(),
        "endsAt": endsAt.toIso8601String(),
        "course": course.toJson(),
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
