// To parse this JSON data, do
//
//     final departmentTeach = departmentTeachFromJson(jsonString);

import 'dart:convert';

List<DepartmentTeach> departmentTeachFromJson(String str) =>
    List<DepartmentTeach>.from(
        json.decode(str).map((x) => DepartmentTeach.fromJson(x)));

String departmentTeachToJson(List<DepartmentTeach> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DepartmentTeach {
  DepartmentTeach({
    this.id,
    this.name,
    this.img,
    required this.doctorList,
  });

  int? id;
  String? name;
  String? img;
  List<DoctorList> doctorList;

  factory DepartmentTeach.fromJson(Map<String, dynamic> json) =>
      DepartmentTeach(
        id: json["id"],
        name: json["name"],
        img: json["img"] == null ? null : json["img"],
        doctorList: List<DoctorList>.from(
            json["doctor_list"].map((x) => DoctorList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img == null ? null : img,
        "doctor_list": List<dynamic>.from(doctorList.map((x) => x.toJson())),
      };
}

class DoctorList {
  DoctorList({
    this.id,
    this.name,
    this.img,
    this.education,
    this.des,
    this.reg,
    this.email,
    this.phone,
  });

  int? id;
  String? name;
  String? img;
  String? education;
  String? des;
  String? reg;
  String? email;
  String? phone;

  factory DoctorList.fromJson(Map<String, dynamic> json) => DoctorList(
        id: json["id"],
        name: json["name"],
        img: json["img"],
        education: json["education"],
        des: json["des"],
        reg: json["reg"],
        email: json["email"],
        phone: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
        "education": education,
        "des": des,
        "reg": reg,
        "email": email,
        "phone": phone,
      };
}
