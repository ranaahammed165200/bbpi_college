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
                    Image.asset(
                      '${mujibModel.img}',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 380.0,
                        height: 30.0,
                        child: Center(
                          child: Text(
                            '${mujibModel.mujibTital}',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        '${mujibModel.mujibDefinition}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
