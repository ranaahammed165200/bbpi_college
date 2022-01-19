import 'package:bbpi_college/modiuls/teaher_model.dart';
import 'package:flutter/services.dart';

class TeacherRepo {
  static Future<List<TeacherModel>> getTeacherList() async {
    final response = await rootBundle.loadString('asset/json/teacher.json');
    print(response);
    print('ekhabe==');
    if (response == null) {
      print("Null=======");
      return [];
    } else {
      List<TeacherModel> users = teacherModelFromJson(response);
      print(users.length);
      return users;
    }
  }
}
