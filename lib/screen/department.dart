
import 'package:bbpi_college/models/department_details.dart';
import 'package:bbpi_college/models/department_modiuls.dart';
import 'package:flutter/material.dart';

class DepartMent extends StatelessWidget {
  const DepartMent({Key? key}) : super(key: key);

  get index => null;

  @override
  Widget build(BuildContext context) {
    List<Department> depList = [
      Department(
        id: 1,
        name: 'COMPUTER TECHNOLOGY',
        img: '',
        details: DepartmentDetailsModel(
            id: 1, name: 'bng', title: 'bangla', img: '', dec: 'Cmt class'),
      ),
      Department(
        id: 2,
        name: 'ELECTROMEDICAL TECCHNOLOGY',
        img: '',
        details: DepartmentDetailsModel(
            id: 2, name: 'emt', title: 'Emt', img: '', dec: 'Cmt class'),
            
      ),
      Department(id: 3,
       name: 'REFRIGERATION AND AIR- CONDITION TECHNOLOGY', 
       img: '',
       details: DepartmentDetailsModel(id:3,name: 'RAT',title: 'RAT',dec: 'RAT CLASS')
       ),
      Department(id: 4, name: 'ARCHITECTURE AND INTERIOR DESIGN TECHNOLOGY', img: ''),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Department'),
      ),
      body: ListView.builder(
          itemCount: depList.length,
          itemBuilder: (context, index) {
            return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (depList.elementAt(index).id == 1) {
                      Department bngDept = depList[0];
                      Navigator.pushNamed(context, '/department',
                          arguments: bngDept);
                    } else if (depList.elementAt(index).id == 2) {
                      Department engDept = depList[1];
                      Navigator.pushNamed(context, '/department',
                          arguments: engDept);
                    }
                 
                 
                  },
                  child: Text('${depList.elementAt(index).name}'),
                  style: ElevatedButton.styleFrom(
                   
                      padding: EdgeInsets.symmetric(vertical: 50.0)),
                      
                      
                ));
          }),
    );
  }
}
