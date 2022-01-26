import 'dart:js';

import 'package:bbpi_college/config/app_constant.dart';
import 'package:bbpi_college/models/about.dart';
import 'package:bbpi_college/screen/administration_view.dart';
import 'package:bbpi_college/screen/homepage.dart';
import 'package:bbpi_college/screen/mujibview.dart';
import 'package:bbpi_college/screen/technology_view.dart';

import 'package:flutter/cupertino.dart';

class Approutes {
  static final myInRoute = Appconstant.homepage;
  static final Map<String, WidgetBuilder> routes = {
    Appconstant.homepage: (context) => const HomePage(),
    Appconstant.mujib_view: (context) => MujibView(),
    Appconstant.technology_view: (context) => TechnologyView(),
    Appconstant.aboutus: (context) => AboutUs(),
    Appconstant.administration: (context) => AdministrationView(),
  };
}
