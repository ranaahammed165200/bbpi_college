import 'package:bbpi_college/models/devoloper_model.dart';
import 'package:flutter/services.dart';

class DevoloperRepo {
  static Future<List<  DevoloperModel>> getTechnology() async {
    final response = await rootBundle.loadString('asset/json/devoloper.json');
    print(response);
    print('ekhane ache');
    if (response == null) {
      return [];
    } else {
      return devoloperModelFromJson(response);
    }
  }
}