import 'package:bbpi_college/models/gallary_model.dart';
import 'package:bbpi_college/repositories/gallary_repo.dart';
import 'package:flutter/material.dart';

class GallaryView extends StatelessWidget {
  const GallaryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallary'),
      ),
      body: FutureBuilder(
        future: GallaryRepo.getTechnology(),
        builder: (context, snapshot) {
          final List<GallaryModel> admList =
              snapshot.data as List<GallaryModel>;
          return ListView.builder(
            itemCount: admList.length,
            itemBuilder: (context, index) {
              return Container(
                  height: 300.0,
                  width: 300.0,
                  child: Image.asset('${admList.elementAt(index).img}'));
            },
          );
        },
      ),
    );
  }
}
