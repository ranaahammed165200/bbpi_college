import 'package:bbpi_college/config/app_constant.dart';
import 'package:flutter/material.dart';

class InnovationVeiw extends StatelessWidget {
  const InnovationVeiw({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('INNOVATION CORNER'),),
    body:Padding(
      padding: const EdgeInsets.all(20.0),
    
        
       
        
        child: Column(children: [
          Container(
            height: 50.0,
            width: 700.0,
            child: ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, Appconstant.Innovation );
              
            }, child: Text('Innovation Idea Submit')),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 50.0,
            width: 700.0,
            child: ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, Appconstant.innovationrobort);
              
            }, child:Text('Robort Mr.Electromedical')),
          )
          
          

        ],),
      ),
    );
    
  }
}