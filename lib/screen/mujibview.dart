import 'dart:html';

import 'package:bbpi_college/models/mujib_model.dart';
import 'package:flutter/material.dart';

import '../repositories/mujib_repo.dart';

class MujibView extends StatelessWidget {
  get mujibMmodel => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mujib Corner'),
      ),
      body: FutureBuilder(
        future: MujibRepo.getMujib(),
        builder: (context, snapshot) {
          List<MujibModel> mujib = snapshot.data as List<MujibModel>;
          print(mujib.length);
          return ListView.builder(
              itemCount: mujib.length,
              itemBuilder: (context, index) {
                MujibModel mujibModel = mujib.elementAt(index);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('${mujibModel.img}'),
                    Text('${mujibModel.mujibTital}'),
                    Text('${mujibModel.mujibDefinition}'),
                  ],
                );
              });
        },
      ),
    );
  }
}
