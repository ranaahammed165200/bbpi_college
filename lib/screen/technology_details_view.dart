import 'package:bbpi_college/models/technology_model.dart';
import 'package:flutter/material.dart';

class TechnologyDetailsView extends StatelessWidget {
  const TechnologyDetailsView({Key? key, required this.technologmodel})
      : super(key: key);
  final Technologmodel technologmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('${technologmodel.computer}'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                
                child:
            
               Image.asset('${technologmodel.img}')),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${technologmodel.computer}',style: TextStyle(color: Colors.red,fontSize: 20.0)),
              )),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${technologmodel.departmentinfo}'),
              )),
              Center(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${technologmodel.lab}'),
              )),
              
            ],
          ),
        ),
      ),
    );
  }
}
