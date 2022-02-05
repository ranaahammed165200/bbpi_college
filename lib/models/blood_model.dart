// To parse this JSON data, do
//
//     final bloodModel = bloodModelFromJson(jsonString);

import 'dart:convert';

List<BloodModel> bloodModelFromJson(String str) => List<BloodModel>.from(json.decode(str).map((x) => BloodModel.fromJson(x)));

String bloodModelToJson(List<BloodModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BloodModel {
    BloodModel({
        this.id,
        this.bloodName,
        this.name,
    });

    int? id;
    String? bloodName;
    String? name;

    factory BloodModel.fromJson(Map<String, dynamic> json) => BloodModel(
        id: json["id"],
        bloodName: json["blood_name"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "blood_name": bloodName,
        "name": name,
    };
}
