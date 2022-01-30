// To parse this JSON data, do
//
//     final historyModel = historyModelFromJson(jsonString);

import 'dart:convert';

List<HistoryModel> historyModelFromJson(String str) => List<HistoryModel>.from(
    json.decode(str).map((x) => HistoryModel.fromJson(x)));

String historyModelToJson(List<HistoryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryModel {
  HistoryModel({
    this.id,
    this.history,
    this.main,
  });

  int? id;
  String? history;
  String? main;

  factory HistoryModel.fromJson(Map<String, dynamic> json) => HistoryModel(
        id: json["id"],
        history: json["history"],
        main: json["main"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "history": history,
        "main": main,
      };
}
