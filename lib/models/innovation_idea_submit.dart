import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Innovation extends StatelessWidget {
  const Innovation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Innovation Idea submit"),),
      body:Text('Dear Students please submit your innovation idea through this\n\n\nemail: bbariapoly@yahoo.com\n\n\nor\n\n\nCall: 01926022837') ,

    );
  }
}