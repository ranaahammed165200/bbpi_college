import 'dart:convert';


import 'package:bbpi_college/models/mujib_model.dart';
import 'package:flutter/services.dart';

class MujibRepo {
  static Future<List<MujibModel>> getMujib() async {
    final response = await rootBundle.loadString('asset/json/mujib.json');

    print(response);
    if (response == null) {
      return [];
    } else {
      List<MujibModel> user = mujibModelFromJson(response);
      return user;
    }
  }
}
