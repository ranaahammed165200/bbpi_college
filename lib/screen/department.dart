import 'package:bbpi_college/modiuls/department_details.dart';
import 'package:bbpi_college/modiuls/department_modiuls.dart';
import 'package:flutter/material.dart';

class DepartMent extends StatelessWidget {
  const DepartMent({Key? key}) : super(key: key);

  get index => null;

  @override
  Widget build(BuildContext context) {
    List<Department> depList = [
      Department(
        id: 1,
        name: 'CMT',
        img: '',
        details: DepartmentDetailsModel(
            id: 1, name: 'bng', title: 'bangla', img: '', dec: 'Cmt class'),
      ),
      Department(
        id: 2,
        name: 'EMT',
        img: '',
        details: DepartmentDetailsModel(
            id: 2, name: 'emt', title: 'Emt', img: '', dec: 'Cmt class'),
      ),
      Department(id: 3, name: 'RAC', img: ''),
      Department(id: 1, name: 'AIDT', img: ''),
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
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
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
                      padding: EdgeInsets.symmetric(vertical: 5.0)),
                ));
          }),
    );
  }
}
