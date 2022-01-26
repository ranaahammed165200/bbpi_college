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
              Image.asset('${technologmodel.img}'),
              Center(child: Text('${technologmodel.computer}')),
              Center(child: Text('${technologmodel.departmentinfo}')),
              Center(child: Text('${technologmodel.lab}')),
              
            ],
          ),
        ),
      ),
    );
  }
}
