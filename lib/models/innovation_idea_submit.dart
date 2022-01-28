import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Innovation extends StatelessWidget {
  const Innovation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Innovation Idea submit"),),
      body:
      
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Dear Students please submit your innovation idea through this\n\nemail: bbariapoly@yahoo.com\nor\n\Call: 01926022837'),
      ) ,

    );
  }
}