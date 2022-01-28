
import 'dart:ui';

import 'package:bbpi_college/models/contact.dart';
import 'package:bbpi_college/repositories/contact_repo.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CONTACT US'),
      ),
      body: FutureBuilder(
        future: ContactRepo.getTechnology(),
        builder: (context, snapshot) {
          final List< ContactModel> admList =
              snapshot.data as List< ContactModel>;
          return ListView.builder(
            itemCount: admList.length,
            itemBuilder: (context, index) {
              return Column(children: [
                   Text('${admList.elementAt(index).campus}',style: TextStyle(color: Colors.red,fontSize: 30.0),),
                   SizedBox(height: 5.0,),
                   Text('${admList.elementAt(index).contact}',style:TextStyle(color: Colors.redAccent,fontSize:20.0 ),),
                   Text('${admList.elementAt(index).address}')
                   
                

              ],
               
              );
            },
          );
        },
      ),
    );
  }
}