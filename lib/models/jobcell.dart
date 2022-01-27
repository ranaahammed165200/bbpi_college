// To parse this JSON data, do
//
//     final jobcellModelDart = jobcellModelDartFromJson(jsonString);

import 'dart:convert';

List<JobcellModelDart> jobcellModelDartFromJson(String str) => List<JobcellModelDart>.from(json.decode(str).map((x) => JobcellModelDart.fromJson(x)));

String jobcellModelDartToJson(List<JobcellModelDart> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class JobcellModelDart {
    JobcellModelDart({
        this.id,
        this.position,
        this.contact,
    });

    int? id;
    String? position;
    String? contact;

    factory JobcellModelDart.fromJson(Map<String, dynamic> json) => JobcellModelDart(
        id: json["id"],
        position: json["position"],
        contact: json["contact"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "position": position,
        "contact": contact,
    };
}
