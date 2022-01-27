import 'package:bbpi_college/models/jobcell.dart';
import 'package:flutter/services.dart';

class JobcellRepo {
  static Future<List<JobcellModelDart>> getMujib() async {
    final response = await rootBundle.loadString('asset/json/jobcell.json');

    print(response);
    if (response == null) {
      return [];
    } else {
      List<JobcellModelDart> user = jobcellModelDartFromJson(response);
      return user;
    }
  }
}
