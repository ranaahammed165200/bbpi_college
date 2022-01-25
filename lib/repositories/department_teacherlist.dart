import 'dart:convert';

import 'package:bbpi_college/models/department_teacherlist_model.dart';

import 'package:flutter/services.dart';

class DepartmentTeachRepo {
  static Future<List<DepartmentTeach>> getDoctorList() async {
    final respose =
        await rootBundle.loadString('asset/json/depatteacherlist.json');
    if (respose != null) {
      List<dynamic> doctors = await json.decode(respose);
      List<DepartmentTeach> doctorList =
          doctors.map((e) => DepartmentTeach.fromJson(e)).toList();
      return doctorList;
    } else {
      return [];
    }
  }
}
