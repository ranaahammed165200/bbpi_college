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
              accountName: Text('Rana Ahammed'),
              accountEmail: Text("ranaahammed165200@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    "asset/image.jpg",
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://thumbs.dreamstime.com/b/light-green-gradient-abstract-background-delicate-leaves-pattern-173653909.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.home),
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
