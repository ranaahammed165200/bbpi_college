import 'dart:ui';

import 'package:flutter/material.dart';

class StudentVeiw extends StatelessWidget {
  const StudentVeiw({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Info'),),
      body:
      
       SingleChildScrollView(
         child: Column(children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image.asset('asset/image/Student1.png'),
           ),
           SizedBox(height:10.0,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text('Student living at friargate, PReston. For value, security and quality of student life, Friargate Court is the number one choice for student accommodation in Preston. If youre looking for that student halls experience youll find our 2 - 5 bed cluster apartments meet expectations on every level. All student rooms are fully furnished and en ...A student is primarily a person enrolled in a school or other educational institution and who is under learning with goals of acquiring knowledge, developing professions and achieving employment in a desired field.[1] In the broader sense, a student is anyone who applies themselves to the intensive intellectual engagement with some matter necessary to master it as part of some practical affair in which such mastery is basic or decisive.In the United Kingdom and most commonwealth countries, the term "student" denotes those enrolled in secondary schools and higher (e.g., college or university); those enrolled in primary/elementary schools are called "pupils".[2]',style: TextStyle(fontSize: 20.0),),
           )
       
         ],
             
       
         ),
       ),
    );
  }
}