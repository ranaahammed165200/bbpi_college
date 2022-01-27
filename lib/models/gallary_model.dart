// To parse this JSON data, do
//
//     final gallaryModel = gallaryModelFromJson(jsonString);

import 'dart:convert';

List<GallaryModel> gallaryModelFromJson(String str) => List<GallaryModel>.from(json.decode(str).map((x) => GallaryModel.fromJson(x)));

String gallaryModelToJson(List<GallaryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GallaryModel {
    GallaryModel({
        this.id,
        this.img,
    });

    int? id;
    String? img;

    factory GallaryModel.fromJson(Map<String, dynamic> json) => GallaryModel(
        id: json["id"],
        img: json["img"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "img": img,
    };
}
