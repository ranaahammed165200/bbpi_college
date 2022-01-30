

import 'package:bbpi_college/models/devoloper_model.dart';
import 'package:bbpi_college/repositories/devoloper_repo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Devoloperview extends StatelessWidget {
  const Devoloperview({Key? key}) : super(key: key);
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DEVOLOPER INFORMATION'),
      ),
      body: FutureBuilder(
        future: DevoloperRepo.getTechnology(),
        builder: (context, snapshot) {
          final List<DevoloperModel> admList =
              snapshot.data as List<DevoloperModel>;
          return ListView.builder(
            itemCount: admList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                      width: 500.0,
                      height: 200.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('${admList.elementAt(index).img}'),
                      )),
                  Text(
                    '${admList.elementAt(index).name}',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      '${admList.elementAt(index).proffesion}',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
