// To parse this JSON data, do
//
//     final exam = examFromJson(jsonString);

import 'dart:convert';

Exam examFromJson(String str) => Exam.fromJson(json.decode(str));

String examToJson(Exam data) => json.encode(data.toJson());

class Exam {
    int page;
    int count;
    int total;
    List<Datum> data;

    Exam({
        required this.page,
        required this.count,
        required this.total,
        required this.data,
    });

    factory Exam.fromJson(Map<String, dynamic> json) => Exam(
        page: json["page"],
        count: json["count"],
        total: json["total"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "count": count,
        "total": total,
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
