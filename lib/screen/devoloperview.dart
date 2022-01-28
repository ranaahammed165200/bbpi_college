import 'dart:ui';

import 'package:bbpi_college/models/devoloper_model.dart';
import 'package:bbpi_college/repositories/devoloper_repo.dart';
import 'package:flutter/material.dart';

class Devoloperview extends StatelessWidget {
  const Devoloperview({Key? key}) : super(key: key);

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
              snapshot.data as List< DevoloperModel>;
          return ListView.builder(
            itemCount: admList.length,
            itemBuilder: (context, index) {
              return Column(children: [
                
                   Image.asset('${admList.elementAt(index).img}'),
                   Text('${admList.elementAt(index).name}',style: TextStyle(color: Colors.red,fontSize: 20.0, ),),
               
                 
                   
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('${admList.elementAt(index).proffesion}',style: TextStyle(color: Colors.red,fontSize: 15.0, ),),
                   )
                   
                

              ],
               
              );
            },
          );
        },
      ),
    );
  }
}