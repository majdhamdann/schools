// To parse this JSON data, do
//
//     final assets = assetsFromJson(jsonString);

import 'dart:convert';

Assets assetsFromJson(String str) => Assets.fromJson(json.decode(str));

String assetsToJson(Assets data) => json.encode(data.toJson());

class Assets {
    int draw;
    int recordsTotal;
    int recordsFiltered;
    List<Datum> data;

    Assets({
        required this.draw,
        required this.recordsTotal,
        required this.recordsFiltered,
        required this.data,
    });

    factory Assets.fromJson(Map<String, dynamic> json) => Assets(
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
    String name;
    String description;
    Media media;
    Course course;

    Datum({
        required this.id,
        required this.name,
        required this.description,
        required this.media,
        required this.course,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        media: Media.fromJson(json["media"]),
        course: Course.fromJson(json["course"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "media": media.toJson(),
        "course": course.toJson(),
    };
}

class Course {
    dynamic id;
    dynamic name;
    dynamic description;
    dynamic type;
    dynamic teacher;
    dynamic courseClass;
    dynamic gradeSystem;

    Course({
        required this.id,
        required this.name,
        required this.description,
        required this.type,
        required this.teacher,
        required this.courseClass,
        required this.gradeSystem,
    });

    factory Course.fromJson(Map<String, dynamic> json) => Course(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        type: json["type"],
        teacher: json["teacher"],
        courseClass: json["class"],
        gradeSystem: json["gradeSystem"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "type": type,
        "teacher": teacher,
        "class": courseClass,
        "gradeSystem": gradeSystem,
    };
}

class Media {
    String id;
    String name;
    String contentType;

    Media({
        required this.id,
        required this.name,
        required this.contentType,
    });

    factory Media.fromJson(Map<String, dynamic> json) => Media(
        id: json["id"],
        name: json["name"],
        contentType: json["contentType"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "contentType": contentType,
    };
}
