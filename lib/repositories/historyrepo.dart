import 'package:bbpi_college/models/historymodel.dart';
import 'package:flutter/services.dart';

class HistoryRepo {
  static Future<List<HistoryModel>> getMujib() async {
    final response = await rootBundle.loadString('asset/json/history.json');

    print(response);
    if (response == null) {
      return [];
    } else {
      List<HistoryModel> user = historyModelFromJson(response);
      return user;
    }
  }
}
