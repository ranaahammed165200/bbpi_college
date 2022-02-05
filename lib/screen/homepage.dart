import 'dart:ui';

import 'package:bbpi_college/config/app_constant.dart';
import 'package:bbpi_college/constant/exitpopup.dart';
import 'package:bbpi_college/screen/drwer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get image => null;
  get asset => null;

  @override
  Widget build(BuildContext context) {
    var administrator;
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
          drawer: DrawerMy(),
          appBar: AppBar(
            centerTitle: true,
            title: Image.asset('asset/image/banner.png'),
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.maxFinite,
            child: Stack(fit: StackFit.expand, children: [
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaY: 2),
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
                      margin: EdgeInsets.only(top: 10.0, left: 5, right: 5.0),
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('asset/image/polytechnic.jpg'))),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _customButton(
                                context: context,
                                name: 'Mujib Corner',
                                color: Colors.lightGreen,
                                image: "asset/image/mujib.png",
                                
                                onTab: () {
                                  Navigator.pushNamed(
                                      context, Appconstant.mujib_view);
                                },
                              ),
                            ),
                          
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: _customButton(
                              context: context,
                              name: 'About us',
                              color: Colors.lightGreen,
                              image: 'asset/image/employee.png',
                              onTab: () {
                                Navigator.pushNamed(
                                    context, Appconstant.aboutus);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _customButton(
                              context: context,
                              name: 'Blood',
                              color: Colors.lightGreen,
                              image: "asset/image/blood.png",
                              onTab: () {
                                Navigator.pushNamed(context,  Appconstant.bloodview);
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _customButton(
                              context: context,
                              name: 'Technology',
                              color: Colors.lightGreen,
                              image: 'asset/image/technology (1).png',
                              onTab: () {
                                Navigator.pushNamed(
                                    context, Appconstant.technology_view);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _customButton(
                              context: context,
                              name: 'Gallary',
                              color: Colors.lightGreen,
                              image: 'asset/image/gallery.png',
                              onTab: () {
                                Navigator.pushNamed(
                                    context, Appconstant.gallarryveiw);
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: _customButton(
                                context: context,
                                name: 'Teacher & Staffs',
                                color: Colors.lightGreen,
                                image: 'asset/image/teamwork.png',
                                onTab: () {
                                  Navigator.pushNamed(
                                      context, Appconstant.teacher_view);
                                },
                              ),
                            ),
                          ),
                        
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _customButton(
                              context: context,
                              name: 'Job Cell',
                              color: Colors.lightGreen,
                              image: 'asset/image/receptionist.png',
                              onTab: () {
                                Navigator.pushNamed(
                                    context, Appconstant.jobcellveiw);
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _customButton(
                              context: context,
                              name: 'Administration',
                              color: Colors.lightGreen,
                              image: 'asset/image/administrator.png',
                              onTab: () {
                                Navigator.pushNamed(
                                    context, Appconstant.administration);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _customButton(
                              context: context,
                              name: 'Student Info',
                              color: Colors.lightGreen,
                              image: 'asset/image/student.png',
                              onTab: () {
                                Navigator.pushNamed(
                                    context, Appconstant.StudentVeiw);
                              },
                            ),
                          ),
                        ),
                        Expanded(
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: _customButton(
                                context: context,
                                name:'Principal Message',
                                color: Colors.lightGreen,
                                image: 'asset/image/message.png',
                                onTab: () {
                                  Navigator.pushNamed(
                                      context,  Appconstant.focal_view);
                                },
                              ),
                         ),
                          ),
                        
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _customButton(
                              context: context,
                              name: 'Contact Us',
                              color: Colors.lightGreen,
                              image: 'asset/image/contact.png',
                              onTab: () {
                                Navigator.pushNamed(
                                    context, Appconstant.contactus);
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _customButton(
                              context: context,
                              name: 'Important Link',
                              color: Colors.lightGreen,
                              image: 'asset/image/world-wide-web.png',
                              onTab: () {
                                Navigator.pushNamed(
                                    context, Appconstant.WebLinkView);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _customButton(
                              context: context,
                              name: 'Devolopers',
                              color: Colors.lightGreen,
                              image: 'asset/image/coding.png',
                              onTab: () {
                                Navigator.pushNamed(
                                    context, Appconstant.devoloperview);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
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
