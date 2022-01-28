// To parse this JSON data, do
//
//     final focalModel = focalModelFromJson(jsonString);

import 'dart:convert';

List<FocalModel> focalModelFromJson(String str) => List<FocalModel>.from(json.decode(str).map((x) => FocalModel.fromJson(x)));

String focalModelToJson(List<FocalModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FocalModel {
    FocalModel({
        this.id,
        this.message,
        this.img,
        this.readMore,
        this.principalDetails,
    });

    int? id;
    String? message;
    String? img;
    String? readMore;
    String? principalDetails;

    factory FocalModel.fromJson(Map<String, dynamic> json) => FocalModel(
        id: json["id"],
        message: json["message"],
        img: json["img"],
        readMore: json["read more"],
        principalDetails: json["principal details"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "message": message,
        "img": img,
        "read more": readMore,
        "principal details": principalDetails,
    };
}
