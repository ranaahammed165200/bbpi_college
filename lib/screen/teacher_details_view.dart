import 'package:flutter/material.dart';
import '../models/teacher_model.dart';


class TeacherDetailsView extends StatelessWidget {
  const TeacherDetailsView({Key? key, required this.teacher}) : super(key: key);
  final Teacher teacher;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEACHER'),
      ),
      body: ListView.builder(
        itemCount:
            teacher.teacherinfo.length == 0 ? 0 : teacher.teacherinfo.length,
        itemBuilder: (context, index) {
          print(teacher.teacherinfo.length);
          final Teacherinfo teacherinfo = teacher.teacherinfo.elementAt(index);
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                    height: 400.0,
                    width: 250.0,
                    child: Image.asset('${teacherinfo.img}')),
                Center(
                    child: Text(
                  '${teacherinfo.name}',
                  style: TextStyle(fontSize: 25),
                )),
                Center(
                    child: Text(
                  '${teacherinfo.position}',
                  textAlign: TextAlign.center,
                )),
                Center(
                    child: Text(
                  '${teacherinfo.education}',
                  textAlign: TextAlign.center,
                )),
                Center(child: Text('${teacherinfo.number}')),
              ],
            ),
          );
        },
      ),
    );
  }
}
