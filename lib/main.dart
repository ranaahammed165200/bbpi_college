import 'package:bbpi_college/modiuls/department_details.dart';
import 'package:bbpi_college/screen/department.dart';
import 'package:bbpi_college/screen/teacherlist.dart';
import 'package:flutter/material.dart';

import 'screen/department_details_view.dart';
import 'screen/homepage.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),

      // home:SigninPage() ,
      initialRoute: '/Homepage',
      routes: {
        '/Homepage': (context) => HomePage(),
        '/depat': (context) => DepartMent(),
        '/depatment': (context) => DepartmentDetails(),

      },
    );
  }
}
