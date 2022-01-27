import 'package:bbpi_college/config/app_constant.dart';
import 'package:flutter/material.dart';

class DrawerMy extends StatelessWidget {
  const DrawerMy({Key? key}) : super(key: key);

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
              accountEmail: Text("http://www.bbpi.gov.bd/",
                  style: TextStyle(color: Colors.red.shade900)),
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
            leading: Icon(Icons.add_circle),
            title: Text('Administrator'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('About us'),
            onTap: () {},
          ),
          Divider(
            color: Colors.green,
          ),
          ListTile(
            leading: Icon(Icons.download),
            title: Text('Download'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Technology'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Job cell'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('teachers and staffs'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Results'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Gallary'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Mojib Corner'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Focal Point'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Students Info'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Innovation Cornar'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Notice'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Contact US'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
