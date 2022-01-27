import 'package:bbpi_college/models/gallary_model.dart';
import 'package:flutter/services.dart';

class GallaryRepo {
  static Future<List<GallaryModel>> getTechnology() async {
    final response = await rootBundle.loadString('asset/json/gallary.json');
    print(response);
    print('ekhane ache');
    if (response == null) {
      return [];
    } else {
      return gallaryModelFromJson(response);
    }
  }
}
