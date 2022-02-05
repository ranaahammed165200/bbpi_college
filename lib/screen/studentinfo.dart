import 'dart:ui';

import 'package:flutter/material.dart';

class StudentVeiw extends StatelessWidget {
  const StudentVeiw({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Info'),),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('student living at friargate, PReston. For value, security and quality of student life, Friargate Court is the number one choice for student accommodation in Preston. If youre looking for that student halls experience youll find our 2 - 5 bed cluster apartments meet expectations on every level. All student rooms are fully furnished and en ...',style: TextStyle(fontSize: 20.0),),
      ),

    );
  }
}