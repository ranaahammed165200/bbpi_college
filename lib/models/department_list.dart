// To parse this JSON data, do
//
//     final departmentList = departmentListFromJson(jsonString);

import 'dart:convert';

List<DepartmentList> departmentListFromJson(String str) => List<DepartmentList>.from(json.decode(str).map((x) => DepartmentList.fromJson(x)));

String departmentListToJson(List<DepartmentList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DepartmentList {
    DepartmentList({
        this.id,
        this.img,
        this.computer,
        this.departmentinfo,
        this.lab,
        this.architecture,
        this.electromedical,
        this.refrigeration,
    });

    int? id;
    String? img;
    String? computer;
    String? departmentinfo;
    String? lab;
    String? architecture;
    String? electromedical;
    String? refrigeration;

    factory DepartmentList.fromJson(Map<String, dynamic> json) => DepartmentList(
        id: json["id"],
        img: json["img"],
        computer: json["computer"] == null ? null : json["computer"],
        departmentinfo: json["departmentinfo"],
        lab: json["lab"],
        architecture: json["architecture"] == null ? null : json["architecture"],
        electromedical: json["electromedical"] == null ? null : json["electromedical"],
        refrigeration: json["refrigeration"] == null ? null : json["refrigeration"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "img": img,
        "computer": computer == null ? null : computer,
        "departmentinfo": departmentinfo,
        "lab": lab,
        "architecture": architecture == null ? null : architecture,
        "electromedical": electromedical == null ? null : electromedical,
        "refrigeration": refrigeration == null ? null : refrigeration,
    };
}
