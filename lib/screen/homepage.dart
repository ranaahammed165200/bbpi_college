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
          title: Text('HomePage'),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          child: Stack(fit: StackFit.expand, children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 4),
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
                          name: 'ADMINISTRATION',
                          color: Colors.lightGreen,
                          image: 'asset/image/administrator.png',
                          onTab: () {},
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
                          name: 'ABOUT US',
                          color: Colors.lightGreen,
                          image: "asset/image/about.png",
                          onTab: () {
                            Navigator.pushNamed(
                                context, Appconstant.deptechlist);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'DOENLOAD',
                          color: Colors.lightGreen,
                          iconData: Icons.download,
                          onTab: () {},
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
                          name: 'DEPARTMENT',
                          color: Colors.lightGreen,
                          iconData: Icons.departure_board,
                          onTab: () {
                            Navigator.pushNamed(
                                context, Appconstant.department);
                          },
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'DEPARTMENT TEACHER LIST',
                          color: Colors.lightGreen,
                          iconData: Icons.account_balance_wallet,
                          onTab: () {},
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
                          iconData: Icons.departure_board,
                          onTab: () {},
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'RESULT',
                          color: Colors.lightGreen,
                          iconData: Icons.account_balance_wallet,
                          onTab: () {},
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
                          iconData: Icons.departure_board,
                          onTab: () {},
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'FOCAL POINT',
                          color: Colors.lightGreen,
                          iconData: Icons.account_balance_wallet,
                          onTab: () {},
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
                          name: 'STUDENT INFO',
                          color: Colors.lightGreen,
                          iconData: Icons.departure_board,
                          onTab: () {},
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'INNOVATION CORNER',
                          color: Colors.lightGreen,
                          iconData: Icons.account_balance_wallet,
                          onTab: () {},
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
                          name: 'NOTICE',
                          color: Colors.blue,
                          iconData: Icons.departure_board,
                          onTab: () {},
                        ),
                      ),
                      Expanded(
                        child: _customButton(
                          context: context,
                          name: 'CONTACT US',
                          color: Colors.blue,
                          onTab: () {},
                        ),
                      ),
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
            Image.asset(
              '$image',
              height: 50,
              width: 50,
            ),
            Text(
              '$name',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
