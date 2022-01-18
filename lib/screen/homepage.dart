import 'package:bbpi_college/screen/drwer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMy(),
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: SingleChildScrollView(
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
                    name: 'Department',
                    color: Colors.green.shade400,
                    iconData: Icons.near_me,
                    onTab: () {
                      Navigator.pushNamed(context, '/depat');
                    },
                  ),
                ),
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Teacher List',
                    color: Colors.yellow,
                    iconData: Icons.home_max,
                    onTab: () {
                      Navigator.pushNamed(context, '/depat');
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
                    name: 'Department',
                    color: Colors.amber.shade400,
                    iconData: Icons.departure_board,
                    onTab: () {},
                  ),
                ),
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Department',
                    color: Colors.blueGrey.shade400,
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
                    name: 'Department',
                    color: Colors.amber.shade400,
                    iconData: Icons.departure_board,
                    onTab: () {},
                  ),
                ),
                Expanded(
                  child: _customButton(
                    context: context,
                    name: 'Department',
                    color: Colors.blueGrey.shade400,
                    iconData: Icons.account_balance_wallet,
                    onTab: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _customButton({
    BuildContext? context,
    @required Color? color,
    @required String? name,
    @required IconData? iconData,
    @required VoidCallback? onTab,
  }) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        // width: MediaQuery.of(context!).size.width * .44,
        height: 120.0,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 50.0,
            ),
            Text(
              '$name',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
