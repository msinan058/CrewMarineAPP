// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/crewModel.dart';
import 'package:flutter_application_1/Models/fakeData.dart';
import 'package:get/get.dart';

class CrewDetailPage extends StatefulWidget {
  const CrewDetailPage({Key? key}) : super(key: key);

  @override
  State<CrewDetailPage> createState() => _CrewDetailPageState();
}

class _CrewDetailPageState extends State<CrewDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("crewdetailPage".tr)),
      body: DataTable(
          columnSpacing: 5,
          columns: [
            DataColumn(
              label: Text("firstName".tr),
            ),
            DataColumn(
              label: Text("lastName".tr),
            ),
            DataColumn(
              label: Text("nationality".tr),
            ),
            DataColumn(
              label: Text("title".tr),
            ),
            DataColumn(
              label: Text("certificates".tr),
            ),
          ],
          rows: crewList.map((crew) {
            return DataRow(cells: [
              DataCell(
                Text(crew.firstName!),
              ),
              DataCell(
                Text(crew.lastName!),
              ),
              DataCell(
                Text(crew.nationality!),
              ),
              DataCell(
                Text(crew.title!),
              ),
              DataCell(
                TextButton(
                  child: Text("certificates".tr),
                  onPressed: () {
                    alertDialog(crew);
                  },
                ),
              ),
            ]);
          }).toList()),
    );
  }

  alertDialog(CrewModel crew) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: AlertDialog(
                content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text("certificatename".tr),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("certificatedate".tr)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: crew.certificates!.map((i) {
                    return Row(children: [
                      Text(i.certificateName),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(i.certificateDate)
                    ]);
                  }).toList(),
                ),
              ],
            )),
          );
        });
  }
}
