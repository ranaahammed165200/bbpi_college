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
                  Container(
                      height: 200.0,
                      width: 200.0,
                      child: Image.asset('${admList.elementAt(index).img}')),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${admList.elementAt(index).name}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${admList.elementAt(index).education}'),
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
