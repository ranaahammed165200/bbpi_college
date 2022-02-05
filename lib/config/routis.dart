

import 'package:bbpi_college/config/app_constant.dart';
import 'package:bbpi_college/models/about.dart';
import 'package:bbpi_college/models/innovation_idea_submit.dart';
import 'package:bbpi_college/models/innovation_robort.dart';
import 'package:bbpi_college/screen/administration_view.dart';
import 'package:bbpi_college/screen/blood_view.dart';
import 'package:bbpi_college/screen/contactview.dart';
import 'package:bbpi_college/screen/devoloperview.dart';

import 'package:bbpi_college/screen/principalview.dart';
import 'package:bbpi_college/screen/gallry_view.dart';
import 'package:bbpi_college/screen/historyview.dart';
import 'package:bbpi_college/screen/homepage.dart';
import 'package:bbpi_college/screen/innovationveiw.dart';
import 'package:bbpi_college/screen/jobcellveiw.dart';
import 'package:bbpi_college/screen/mujibview.dart';
import 'package:bbpi_college/screen/studentinfo.dart';
import 'package:bbpi_college/screen/technology_view.dart';
import 'package:bbpi_college/screen/web_link_veiw.dart';
import '../screen/teacher_view.dart';

import 'package:flutter/cupertino.dart';

class Approutes {
  static final myInRoute = Appconstant.homepage;
  static final Map<String, WidgetBuilder> routes = {
    Appconstant.homepage: (context) => const HomePage(),
    Appconstant.mujib_view: (context) => MujibView(),
    Appconstant.technology_view: (context) => TechnologyView(),
    Appconstant.aboutus: (context) => AboutUs(),
    Appconstant.administration: (context) => AdministrationView(),
    Appconstant.gallarryveiw: (context) => GallaryView(),
    Appconstant.jobcellveiw: (context) => JobcellVeiw(),
    Appconstant.WebLinkView: (context) => WebLinkView(),
    Appconstant.teacher_view: (context) => TeacherView(),
    Appconstant.focal_view:(context)=>FocalVeiw(),
    Appconstant.Innovation:(context)=>Innovation(),
    Appconstant.innovationrobort:(context)=>InnovationRobort(),
    Appconstant.innovationveiw:(context)=>InnovationVeiw(),
    Appconstant.contactus:(context)=>ContactView(),
    Appconstant.devoloperview:(context)=>Devoloperview(),
    Appconstant.historyview:(context)=>HistoryView(),
    Appconstant.bloodview:(context)=>BloodView(),
    Appconstant.StudentVeiw:(context)=>StudentVeiw()
  
  };
}
