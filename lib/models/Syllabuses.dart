// To parse this JSON data, do
//
//     final syllabuses = syllabusesFromJson(jsonString);

import 'dart:convert';

Syllabuses syllabusesFromJson(String str) => Syllabuses.fromJson(json.decode(str));

String syllabusesToJson(Syllabuses data) => json.encode(data.toJson());

class Syllabuses {
    int draw;
    int recordsTotal;
    int recordsFiltered;
    List<Datum> data;

    Syllabuses({
        required this.draw,
        required this.recordsTotal,
        required this.recordsFiltered,
        required this.data,
    });

    factory Syllabuses.fromJson(Map<String, dynamic> json) => Syllabuses(
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
    int sequence;
    Media media;
    Course course;

    Datum({
        required this.id,
        required this.name,
        required this.description,
        required this.sequence,
        required this.media,
        required this.course,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        sequence: json["sequence"],
        media: Media.fromJson(json["media"]),
        course: Course.fromJson(json["course"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "sequence": sequence,
        "media": media.toJson(),
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
