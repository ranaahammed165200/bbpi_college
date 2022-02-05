import 'package:bbpi_college/models/blood_model.dart';
import 'package:flutter/material.dart';

class BloodViewDetails extends StatelessWidget {
  const BloodViewDetails({Key? key, required this.technologmodel})
      : super(key: key);
  final BloodModel technologmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('${technologmodel.bloodName}'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
             
              
             
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${technologmodel.name}',
                    style: TextStyle(color: Colors.red, fontSize: 25.0)),
              )),
            
             ] )
              )),
            
    
          );
    
  }
}
