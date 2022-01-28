
import 'package:bbpi_college/models/focalmodel.dart';
import 'package:flutter/services.dart';

class FocalRepo {
  static Future<List<FocalModel>> getTechnology() async {
    final response = await rootBundle.loadString('asset/json/focalpoint.json');
    print(response);
    print('ekhane ache');
    if (response == null) {
      return [];
    } else {
      return  focalModelFromJson(response);
    }
  }
}
