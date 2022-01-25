
import 'package:bbpi_college/models/department_teacherlist_model.dart';
import 'package:bbpi_college/repositories/department_teacherlist.dart';
import 'package:flutter/material.dart';

class DepartmentTeacherView extends StatefulWidget {
  const DepartmentTeacherView({Key? key}) : super(key: key);

  @override
  State<DepartmentTeacherView> createState() => _DepartmentTeacherState();
}

class _DepartmentTeacherState extends State<DepartmentTeacherView> {
  // List<DepartmentTeach> depList = [];
  @override
  void initState() {
    super.initState();
    // DepartmentTeachRepo.getDoctorList().then((value) {
    //   setState(() {
    //     depList.addAll(value);
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Department Teacher list"),
        ),
        body: FutureBuilder(
          future: DepartmentTeachRepo.getDoctorList(),
          builder: (context, snapshot) {
            List<DepartmentTeach> dept = snapshot.data as List<DepartmentTeach>;

            return ListView.builder(
              itemCount: dept.length,
              itemBuilder: (context, index) {
                DepartmentTeach department = dept.elementAt(index);
                return Column(
                  children: [
                    Text('${department.name}'),
                  ],
                );
              },
            );
          },
        ));
  }
}
