import 'package:bbpi_college/models/blood_model.dart';
import 'package:flutter/services.dart';



class BloodRepo {
  static Future<List< BloodModel >> getTechnology() async {
    final response = await rootBundle.loadString('asset/json/blood_information.json');
    print(response);
    print('ekhane ache');
    if (response == null) {
      return [];
    } else {
      return  bloodModelFromJson(response);
    }
  }
}