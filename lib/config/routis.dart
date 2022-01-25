import 'dart:js';

import 'package:bbpi_college/config/app_constant.dart';
import 'package:bbpi_college/screen/department.dart';
import 'package:bbpi_college/screen/department_details_view.dart';
import 'package:bbpi_college/screen/department_teacherlistview.dart';

import 'package:bbpi_college/screen/homepage.dart';
import 'package:bbpi_college/screen/mujibview.dart';

import 'package:flutter/cupertino.dart';

class Approutes {
  static final myInRoute = Appconstant.homepage;
  static final Map<String, WidgetBuilder> routes = {
    Appconstant.homepage: (context) => const HomePage(),
    Appconstant.department: (context) => DepartMent(),
    Appconstant.departmentdetails: (context) => DepartmentDetails(),
    Appconstant.deptechlist: (context) => DepartmentTeacherView(),
    Appconstant.mujib_view: (context) => MujibView(),
  };
}
