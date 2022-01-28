import 'dart:html';

import 'package:flutter/material.dart';

class InnovationRobort extends StatelessWidget {
  const InnovationRobort({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text('Robot Mr. Elctromedical'),),
    body:SingleChildScrollView(
        child: Column(
          children: [
            Text('Robot: Mr. Electromedical\n\n\n',style: TextStyle(color: Colors.red,fontSize: 20.0),),
            Text('The robot, called Mr. Electromedical can perform various tests including human body temperature, heart rate, oxygen volume, and blood pressure measurements. More sophisticated technologies are being added at the same time. more details click here\n\n\n\n'),
            Image.asset('asset/image/robortpic.jpg'),
            


          ]))
    );
    
    
    
  }
}