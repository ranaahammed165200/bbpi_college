import 'package:bbpi_college/config/routis.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bbpi',
      theme: ThemeData(
        appBarTheme: AppBarTheme(foregroundColor: Colors.white),
        primarySwatch: Colors.lightGreen,
      ),

      // home:SigninPage() ,
      initialRoute: Approutes.myInRoute,
      routes: Approutes.routes,
    );
  }
}
