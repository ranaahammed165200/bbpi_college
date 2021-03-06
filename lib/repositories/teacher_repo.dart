import 'package:flutter/services.dart';
import '../models/teacher_model.dart';

class TeacherRepo {
  static Future<List<Teacher>> getTeacher() async {
    final response = await rootBundle.loadString('asset/json/teacher.json');
    print(response);
    if (response == null) {
      return [];
    } else {
      return teacherFromJson(response);
    }
  }
}
