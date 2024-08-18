// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
    String id;
    String firstName;
    String lastName;
    String email;
    String phoneNumber;
    List<String> roles;
    Parents parents;

    Profile({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.phoneNumber,
        required this.roles,
        required this.parents,
    });

    factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phoneNumber: json["phoneNumber"],
        roles: List<String>.from(json["roles"].map((x) => x)),
        parents: Parents.fromJson(json["parents"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phoneNumber": phoneNumber,
        "roles": List<dynamic>.from(roles.map((x) => x)),
        "parents": parents.toJson(),
    };
}

class Parents {
    String fatherName;
    String motherName;
    String fatherPhone;
    String motherPhone;

    Parents({
        required this.fatherName,
        required this.motherName,
        required this.fatherPhone,
        required this.motherPhone,
    });

    factory Parents.fromJson(Map<String, dynamic> json) => Parents(
        fatherName: json["fatherName"],
        motherName: json["motherName"],
        fatherPhone: json["fatherPhone"],
        motherPhone: json["motherPhone"],
    );

    Map<String, dynamic> toJson() => {
        "fatherName": fatherName,
        "motherName": motherName,
        "fatherPhone": fatherPhone,
        "motherPhone": motherPhone,
    };
}
