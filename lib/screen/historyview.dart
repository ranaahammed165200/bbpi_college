import 'package:bbpi_college/models/historymodel.dart';
import 'package:bbpi_college/repositories/historyrepo.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: FutureBuilder(
        future: HistoryRepo.getMujib(),
        builder: (context, snapshot) {
          final List<HistoryModel> admList =
              snapshot.data as List<HistoryModel>;
          return ListView.builder(
            itemCount: admList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      width: 380,
                      height: 50,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${admList.elementAt(index).history}',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '${admList.elementAt(index).main}',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
