import 'dart:ui';

import 'package:bbpi_college/config/app_constant.dart';
import 'package:bbpi_college/constant/exitpopup.dart';
import 'package:bbpi_college/screen/drwer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get image => null;

  get asset => null;

    int activeIndex=0;

  final urlImages =[
    'asset/image/polytechnic.png',
    'asset/image/Minar1.png',
    'asset/image/Minar.png',
    'asset/image/Shekhrasel.png',
    'asset/image/MR.png',
    'asset/image/cmt_program.png',
    'asset/image/program.png',
    'asset/image/cmt.png',
    'asset/image/minar.jpg',

   ];

  @override
  Widget build(BuildContext context) {
    var administrator;
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
          endDrawer: DrawerMy(),
          appBar: AppBar(
            centerTitle: true,
            title: Image.asset('asset/image/banner.png'),
          ),
          body: SizedBox(
            height:MediaQuery.of(context).size.height,
            width: double.maxFinite,
            child: Stack(fit: StackFit.expand, children: [
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaY: 2.0,sigmaX: 2.0),
                child: Image.asset(
                  "asset/niloy.jpg",
                  fit: BoxFit.cover,
                  height: 100.0,
                  width: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                         Column(
                    
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     CarouselSlider.builder(itemCount: urlImages.length,
                     itemBuilder: (context, index, realIndex) {
                       final urlImage = urlImages[index];
                       return buildImage(urlImage,index);
                     }, 
                     options: CarouselOptions(
                       
                       height: 200,
                       
                       autoPlay: true,
                      
                       enlargeCenterPage: true,
                       enableInfiniteScroll: true,
                       enlargeStrategy: CenterPageEnlargeStrategy.height,
                     
                      pageSnapping: false,
                       autoPlayInterval: Duration(seconds: 3),
                       onPageChanged: (index, reason) => 
                       setState(()=> activeIndex =index),
                       )
                       ),
                       const SizedBox(height: 32),
                       Center(
                         child: DotsIndicator(
                           dotsCount: urlImages.length,
                           position: activeIndex.toDouble(),
                           decorator: DotsDecorator(
                           size: const Size.square(9.0),
                           activeSize: const Size(18.0, 9.0),
                           activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                       ),


                      // Container(
                      //   margin: EdgeInsets.only(top: 10.0, left: 5, right: 5.0),
                      //   height: 200,
                      //   width: double.infinity,
                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //           fit: BoxFit.cover,
                      //           image:
                      //               AssetImage('asset/image/polytechnic.jpg'))),
                      // ),



                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                                padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                             padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                              padding: const EdgeInsets.all(2.0),
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
                  ),]
                )
              ),
              )
            ],),
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

 Widget buildImage( String urlImage, int index)=> Container(
  margin: EdgeInsets.symmetric(horizontal: 24),
  color: Colors.grey,
  
  child: Image.asset(
    '${urlImage}',
    fit: BoxFit.cover,
  ),
);