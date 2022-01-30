// To parse this JSON data, do
//
//     final contactModel = contactModelFromJson(jsonString);

import 'dart:convert';

List<ContactModel> contactModelFromJson(String str) => List<ContactModel>.from(
    json.decode(str).map((x) => ContactModel.fromJson(x)));

String contactModelToJson(List<ContactModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ContactModel {
  ContactModel({
    this.id,
    this.campus,
    this.contact,
    this.address,
    this.website,
  });

  int? id;
  String? campus;
  String? contact;
  String? address;
  String? website;

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        id: json["id"],
        campus: json["campus"],
        contact: json["contact"],
        address: json["address"],
        website: json["website"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "campus": campus,
        "contact": contact,
        "address": address,
        "website": website,
      };
}
