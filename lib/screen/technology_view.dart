import 'dart:ui';

import 'package:bbpi_college/screen/technology_details_view.dart';
import 'package:flutter/material.dart';
import '../models/technology_model.dart';
import '../repositories/technology_repo.dart';

class TechnologyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Technology'),
      ),
      body: FutureBuilder(
        future: TechnologRepo.getTechnology(),
        builder: (context, snapshot) {
          List<Technologmodel> technology =
              snapshot.data as List<Technologmodel>;
          // print(technology.length);
          // print('technology.legnth');
          return ListView.builder(
              itemCount: technology.length,
              itemBuilder: (context, index) {
                Technologmodel technologmodel = technology.elementAt(index);
                return Container(
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TechnologyDetailsView(
                                  technologmodel: technologmodel),
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${technology.elementAt(index).computer}',
                            style: TextStyle(
                              fontSize: 15.0,
                            )),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
