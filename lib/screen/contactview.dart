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
          final List<ContactModel> admList =
              snapshot.data as List<ContactModel>;
          return ListView.builder(
            itemCount: admList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 380,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          '${admList.elementAt(index).campus}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    width: 380,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            '${admList.elementAt(index).contact}',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '${admList.elementAt(index).address}',
                    style: TextStyle(fontSize: 20.0),
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
