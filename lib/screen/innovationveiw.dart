import 'package:bbpi_college/config/app_constant.dart';
import 'package:flutter/material.dart';

class InnovationVeiw extends StatelessWidget {
  const InnovationVeiw({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('INNOVATION CORNER'),),
    body:Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        
        height: 100.0,
        
        child: Column(children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, Appconstant.Innovation );
            
          }, child: Text('Innovation Idea Submit')),
          SizedBox(height: 10.0,),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, Appconstant.innovationrobort);
            
          }, child:Text('Robort Mr.Electromedical'))
          
          

        ],),
      ),
    )
    );
  }
}