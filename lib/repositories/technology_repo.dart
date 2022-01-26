import 'package:flutter/services.dart';

import '../models/technology_model.dart';

class TechnologRepo {
  static Future<List<Technologmodel>> getTechnology() async {
    final response = await rootBundle.loadString('asset/json/technology.json');
    print(response);
    print('ekhane ache');
    if (response == null) {
      return [];
    } else {
      return technologmodelFromJson(response);
    }
  }
}
