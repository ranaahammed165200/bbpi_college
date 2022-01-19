import 'package:bbpi_college/modiuls/department_modiuls.dart';
import 'package:flutter/material.dart';

class DepartmentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Department arg = ModalRoute.of(context)!.settings.arguments as Department;
    return Scaffold(
      appBar: AppBar(
        title: Text('DepartmentDetails'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${arg.name!}'),
          
            Text('${arg.details!.title}'),
            Text('${arg.details!.dec}'),
          ],
        ),
      ),
    );
  }
}
