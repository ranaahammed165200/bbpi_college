import 'package:bbpi_college/config/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerMy extends StatelessWidget {
  const DrawerMy({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: UserAccountsDrawerHeader(
              accountName: Text(
                'Brahmanbaria Polytechnic institute',
                style: TextStyle(color: Colors.red.shade900),
              ),
              accountEmail: TextButton(
                child: Text(
                  "bbariapoly@yahoo.com",
                  style: TextStyle(color: Colors.red.shade900),
                ),
                onPressed: () {
                  print("object");
                  _launchURL("mailto:bbariapoly@yahoo.com");
                },
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    "asset/niloy.jpg",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/image/ba.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, Appconstant.homepage);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box_outlined),
            title: Text('About us'),
            onTap: () {
              Navigator.pushNamed(context, Appconstant.focal_view);
            },
          ),
          ListTile(
            leading: Icon(Icons.collections),
            title: Text('Gallary'),
            onTap: () {
              Navigator.pushNamed(context, Appconstant.gallarryveiw);
            },
          ),
          Divider(
            color: Colors.green,
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () {
              Navigator.pushNamed(context, Appconstant.historyview);
            },
          ),
          ListTile(
            leading: Icon(Icons.download_done),
            title: Text('Dowonloads'),
            onTap: () {},
          ),
          Divider(
            color: Colors.green,
          ),
          ListTile(
            leading: Icon(Icons.desktop_windows),
            trailing: Icon(Icons.panorama_wide_angle_rounded),
            title: Text('Desktop site'),
            onTap: () {},
          ),
          Divider(
            color: Colors.green,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.developer_board,
            ),
            title: Text('Devoloper Information'),
            onTap: () {
              Navigator.pushNamed(context, Appconstant.devoloperview);
            },
          ),
        ],
      ),
    );
  }
}
