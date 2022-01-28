import 'dart:ui';

import 'package:bbpi_college/config/app_constant.dart';
import 'package:bbpi_college/screen/drwer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get image => null;

  get asset => null;

  @override
  Widget build(BuildContext context) {
    var administrator;
    return Scaffold(
        drawer: DrawerMy(),
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          
          actions: [Image.asset('asset/image/bbpi_banner.jpg')]),
       
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          child: Stack(fit: StackFit.expand, children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur( sigmaY:2),
              child: Image.asset(
                "asset/niloy.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.0, left:5, right: 5.0),
                    height:200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('asset/image/polytechnic.jpg'))),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'MUJIB CORNER',
                          color: Colors.lightGreen,
                          image: "asset/image/mujib.jpg",
                          onTab: () {
                            Navigator.pushNamed(
                                context, Appconstant.mujib_view);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'ABOUT US',
                          color: Colors.lightGreen,
                          image: 'asset/image/personal.png',
                          onTab: () {
                            Navigator.pushNamed(
                                context, Appconstant.focal_view);
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'FOCAL POINT',
                          color: Colors.lightGreen,
                          image: "asset/image/focal point.jpg",
                          onTab: () {
                            Navigator.pushNamed(context, Appconstant.aboutus);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'TECHNOLOGY',
                          color: Colors.lightGreen,
                          image: 'asset/image/department.png',
                          onTab: () {
                            Navigator.pushNamed(
                                context, Appconstant.technology_view);
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'GALLARY',
                          color: Colors.lightGreen,
                          image: 'asset/image/gallery.png',
                          onTab: () {
                            Navigator.pushNamed(
                                context, Appconstant.gallarryveiw);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'TEACHER & STAFFS',
                          color: Colors.lightGreen,
                          image: 'asset/image/teamwork.png',
                          onTab: () {
                            Navigator.pushNamed(
                                context, Appconstant.teacher_view);
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'JOB CELL',
                          color: Colors.lightGreen,
                          image: 'asset/image/receptionist.png',
                          onTab: () {
                            Navigator.pushNamed(
                                context, Appconstant.jobcellveiw);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'ADMINISTRATION',
                          color: Colors.lightGreen,
                          image: 'asset/image/administrator.png',
                          onTab: () {
                            Navigator.pushNamed(context, Appconstant.administration);
                          },
                        ),
                      ),
                    ],
                  ),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'CONTACT US',
                          color: Colors.lightGreen,
                          image: 'asset/image/contact.png',
                          onTab: () {
                            Navigator.pushNamed(context,  Appconstant.contactus);
                          },
                        ),
                      ),
                        Expanded(
                        child: _customButton(
                          context: context,
                          name: 'DEVOLOPERS',
                          color: Colors.lightGreen,
                          image: 'asset/image/coding.png',
                          onTab: () {
                            Navigator.pushNamed(context,Appconstant.devoloperview );
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ));
  }

  Widget _customButton({
    BuildContext? context,
    @required Color? color,
    @required String? name,
    @required IconData? iconData,
    @required VoidCallback? onTab,
    String? image,
  }) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        // width: MediaQuery.of(context!).size.width * .44,
        height: 100.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15.0)),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                '$image',
                height: 40,
                width: 50,
              ),
            ),
            Expanded(
              child: Text(
                '$name',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
