import 'package:bbpi_college/models/administration_model.dart';
import 'package:bbpi_college/repositories/administration_repo.dart';
import 'package:flutter/material.dart';

class AdministrationView extends StatelessWidget {
  const AdministrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Administration'),
      ),
      body: FutureBuilder(
        future: AdministrationRepo.getAdministrationList(),
        builder: (context, snapshot) {
          final List<AdministrationModel> admList =
              snapshot.data as List<AdministrationModel>;
          return ListView.builder(
            itemCount: admList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset('${admList.elementAt(index).img}'),
                  Text('${admList.elementAt(index).name}'),
                  Text('${admList.elementAt(index).education}'),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
