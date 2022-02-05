
import 'package:bbpi_college/models/blood_model.dart';
import 'package:bbpi_college/repositories/blood_repo.dart';
import 'package:bbpi_college/screen/blood_view_details.dart';
import 'package:flutter/material.dart';

class BloodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Information'),
      ),
      body: FutureBuilder(
        future: BloodRepo.getTechnology(),
        builder: (context, snapshot) {
          List<BloodModel> technology =
              snapshot.data as List<BloodModel>;
          print(technology.length);
        // print('technology.legnth');
          return ListView.builder(
              itemCount: technology.length,
              itemBuilder: (context, index) {
                BloodModel technologmodel = technology.elementAt(index);
                return Container(
                  height: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>BloodViewDetails(technologmodel: technologmodel)
                            ));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${technology.elementAt(index).bloodName}',
                            style: TextStyle(
                              color: Colors.white,
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
