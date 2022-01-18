
import 'dart:convert';


import 'package:bbpi_college/modiuls/teachermodel.dart';
import 'package:flutter/services.dart';

class DoctorRepo {
  static Future<List<TeacherModel>> getDoctorList() async {
    final respose = await rootBundle.loadString('assets/json/doctor_list.json');
    if (respose != null) {
      List<dynamic> doctors = await json.decode(respose);
      List< TeacherModel> doctorList =
          doctors.map((e) =>  TeacherModel.fromJson(e)).toList();
      return doctorList;
    } else {
      return [];
    }
  }
}