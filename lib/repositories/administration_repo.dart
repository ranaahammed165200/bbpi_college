import 'package:bbpi_college/models/administration_model.dart';
import 'package:flutter/services.dart';

class AdministrationRepo {
  static Future<List<AdministrationModel>> getAdministrationList() async {
    final response =
        await rootBundle.loadString('asset/json/administration.json');
    if (response == null) {
      return [];
    } else {
      List<AdministrationModel> user = administrationModelFromJson(response);
      return user;
    }
  }
}
