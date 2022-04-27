// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/fakeData.dart';
import 'package:flutter_application_1/Pages/CrewDetailPage.dart';
import 'package:get/get.dart';

class CrewPage extends StatefulWidget {
  const CrewPage({Key? key}) : super(key: key);

  @override
  State<CrewPage> createState() => _CrewPageState();
}

class _CrewPageState extends State<CrewPage> {
  @override
  Widget build(BuildContext context) {
    return DataTable(
        columnSpacing: 10,
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
            label: Text("detail".tr),
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
                child: Text("detail".tr),
                onPressed: () {
                  Get.to(const CrewDetailPage());
                },
              ),
            ),
          ]);
        }).toList());
  }
}
