// To parse this JSON data, do
//
//     final devoloperModel = devoloperModelFromJson(jsonString);

import 'dart:convert';

List<DevoloperModel> devoloperModelFromJson(String str) => List<DevoloperModel>.from(json.decode(str).map((x) => DevoloperModel.fromJson(x)));

String devoloperModelToJson(List<DevoloperModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DevoloperModel {
    DevoloperModel({
        this.id,
        this.img,
        this.name,
        this.proffesion,
    });

    int? id;
    String? img;
    String? name;
    String? proffesion;

    factory DevoloperModel.fromJson(Map<String, dynamic> json) => DevoloperModel(
        id: json["id"],
        img: json["img"],
        name: json["name"],
        proffesion: json["proffesion"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "img": img,
        "name": name,
        "proffesion": proffesion,
    };
}
