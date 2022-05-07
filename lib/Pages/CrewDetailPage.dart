// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/CrewController.dart';
import 'package:flutter_application_1/Models/crewModel.dart';
import 'package:get/get.dart';

class CrewDetailPage extends StatefulWidget {
  const CrewDetailPage({Key? key}) : super(key: key);

  @override
  State<CrewDetailPage> createState() => _CrewDetailPageState();
}

class _CrewDetailPageState extends State<CrewDetailPage> {
  final crewGetController = Get.put(CrewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("crewdetailPage".tr)),
        body: Obx((() => Table(
              border: TableBorder.all(
                width: 1,
                color: Colors.grey,
              ),
              children: table(crewGetController.crewDataList),
            ))));
  }

  table(List<CrewModel> crewList) {
    List<TableRow> tablerows = [];

    tablerows.add(
      TableRow(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        children: [
          Text(
            "firstName".tr,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            "lastName".tr,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            "nationality".tr,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            "title".tr,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            "certificates".tr,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );

    for (var crew in crewList) {
      tablerows.add(TableRow(children: [
        Text(crew.firstName!),
        Text(crew.lastName!),
        Text(crew.nationality!),
        Text(crew.title!),
        InkWell(
            onTap: () => alertDialog(crew), child: Certificates(crew, false)),
      ]));
    }

    return tablerows;
  }

  alertDialog(CrewModel crew) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: AlertDialog(content: Certificates(crew, true)),
          );
        });
  }
}

class Certificates extends StatelessWidget {
  const Certificates(
    this.crew,
    this.isPopUp, {
    Key? key,
  }) : super(key: key);
  final CrewModel crew;
  final bool isPopUp;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        isPopUp
            ? Row(
                children: [
                  Text("certificatename".tr),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("certificatedate".tr)
                ],
              )
            : Container(),
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
              isPopUp ? Text(i.certificateDate) : Container()
            ]);
          }).toList(),
        ),
      ],
    );
  }
}
