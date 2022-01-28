import 'package:bbpi_college/models/contact.dart';

import 'package:flutter/services.dart';

class ContactRepo {
  static Future<List< ContactModel>> getTechnology() async {
    final response = await rootBundle.loadString('asset/json/contact.json');
    print(response);
    print('ekhane ache');
    if (response == null) {
      return [];
    } else {
      return contactModelFromJson(response);
    }
  }
}