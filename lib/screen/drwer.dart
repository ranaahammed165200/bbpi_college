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
              
              accountName:
                 Padding(
                   padding: const EdgeInsets.only(top:20.0,left: 8.0),
                   child: Text(
                    'Brahmanbaria Polytechnic institute',
                    style: TextStyle(color: Colors.red.shade900),
                ),
                 ),
              
            
              accountEmail: TextButton(
               
                  child: Text(
                "Email:bbariapoly@yahoo.com",
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
              Navigator.pushNamed(context, Appconstant.aboutus);
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
            leading: Icon(Icons.work),
            title: Text('Job Cell'),
            onTap: () {
              Navigator.pushNamed(context, Appconstant.jobcellveiw);
            },
          ),
          Divider(
            color: Colors.green,
          ),
          ListTile(
            leading: Icon(Icons.engineering),
          
            title: Text('Student Info'),
            onTap: () {
              Navigator.pushNamed(context,Appconstant.StudentVeiw );
            },
          ),
          Divider(
            color: Colors.green,
          ),
          ListTile(
            leading: Icon(Icons.contact_phone),
            title: Text('Contact'),
            onTap: () {
              Navigator.pushNamed(context,Appconstant.contactus);
            },
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
