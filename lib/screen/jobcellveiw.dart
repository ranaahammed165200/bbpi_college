import 'package:bbpi_college/models/jobcell.dart';
import 'package:bbpi_college/repositories/job_repo.dart';
import 'package:flutter/material.dart';

class JobcellVeiw extends StatelessWidget {
  const JobcellVeiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JOB CELL'),
      ),
      body: FutureBuilder(
        future: JobcellRepo.getMujib(),
        builder: (context, snapshot) {
          final List<JobcellModelDart> admList =
              snapshot.data as List<JobcellModelDart>;
          return ListView.builder(
            itemCount: admList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${admList.elementAt(index).position}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${admList.elementAt(index).contact}'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}