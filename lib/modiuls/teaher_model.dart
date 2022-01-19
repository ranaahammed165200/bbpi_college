// To parse this JSON data, do
//
//     final teacherModel = teacherModelFromJson(jsonString);

import 'dart:convert';

List<TeacherModel> teacherModelFromJson(String str) => List<TeacherModel>.from(json.decode(str).map((x) => TeacherModel.fromJson(x)));

String teacherModelToJson(List<TeacherModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TeacherModel {
    TeacherModel({
        this.id,
        this.name,
        this.des,
        this.position,
        this.edu,
        this.img,
        this.email,
        this.mobileNumber,
        this.department,
        this.dept,
    });

    int? id;
    String? name;
    String? des;
    String? position;
    String? edu;
    String? img;
    String? email;
    String? mobileNumber;
    String? department;
    String? dept;

    factory TeacherModel.fromJson(Map<String, dynamic> json) => TeacherModel(
        id: json["id"],
        name: json["name"],
        des: json["des"] == null ? null : json["des"],
        position: json["Position"],
        edu: json["edu"],
        img: json["img"],
        email: json["email"] == null ? null : json["email"],
        mobileNumber: json["mobile number"],
        department: json["Department"] == null ? null : json["Department"],
        dept: json["dept"] == null ? null : json["dept"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "des": des == null ? null : des,
        "Position": position,
        "edu": edu,
        "img": img,
        "email": email == null ? null : email,
        "mobile number": mobileNumber,
        "Department": department == null ? null : department,
        "dept": dept == null ? null : dept,
    };
}
