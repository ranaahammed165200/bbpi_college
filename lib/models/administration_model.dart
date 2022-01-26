// To parse this JSON data, do
//
//     final AdministrationModel = AdministrationModelFromJson(jsonString);

import 'dart:convert';

List<AdministrationModel> administrationModelFromJson(String str) =>
    List<AdministrationModel>.from(
        json.decode(str).map((x) => AdministrationModel.fromJson(x)));

String administrationModelToJson(List<AdministrationModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AdministrationModel { 
  AdministrationModel({
    this.id,
    this.img,
    this.name,
    this.position,
    this.education,
    this.contact,
  });

  int? id;
  String? img;
  String? name;
  String? position;
  String? education;
  String? contact;

  factory AdministrationModel.fromJson(Map<String, dynamic> json) => AdministrationModel(
        id: json["id"],
        img: json["img"],
        name: json["name"],
        position: json["position"],
        education: json["education"],
        contact: json["contact"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "img": img,
        "name": name,
        "position": position,
        "education": education,
        "contact": contact,
      };

  static getAdministrationList() {}
}
