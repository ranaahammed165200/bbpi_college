
import 'dart:ui';

import 'package:bbpi_college/models/focalmodel.dart';
import 'package:bbpi_college/repositories/focal_repo.dart';
import 'package:flutter/material.dart';

class FocalVeiw extends StatelessWidget {
  const FocalVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABOUT US'),
      ),
      body: FutureBuilder(
        future:FocalRepo .getTechnology(),
        builder: (context, snapshot) {
          final List<FocalModel> admList =
              snapshot.data as List<FocalModel>;
          return ListView.builder(
            itemCount: admList.length,
            itemBuilder: (context, index) {
              
              return Column(
                   mainAxisAlignment: MainAxisAlignment.center,

                children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${admList.elementAt(index).message}',style: TextStyle(color:Colors.red,fontSize:20.0),),
                      
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('${admList.elementAt(index).img}'),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${admList.elementAt(index).readMore}'),
                    ),
                  
            
                
                  Center(child: SizedBox(child: Text('${admList.elementAt(index).principalDetails}'))),
                  
                  
                ],
              );
          
      
             } );
        },
      ),
    );
  }
}