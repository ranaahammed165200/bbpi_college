import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Column(
        children: [Text('1.Introduction'),
        SizedBox(height: 10,),
        Text("Brahmanbaria Polytechnic Institute is one of the most famous among all polytechnic institutes in Bangladesh. It was started in 2005 with only 48 students in the first semester of Diploma-in-Engineering of Refrigeration and Air Conditioning Technology. Since then the institute is being ever expanded by different emergent technologies. The institute is now offering courses in 4(four) technologies with the expectation of opening more Technologies for future.")
        
        ], 
      ),
    );
  }
}
