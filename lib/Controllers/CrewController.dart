// ignore_for_file: file_names

import 'package:flutter_application_1/Models/crewModel.dart';
import 'package:flutter_application_1/Models/fakeData.dart';
import 'package:get/get.dart';

class CrewController extends GetxController {
  RxList<CrewModel> crewDataList = <CrewModel>[].obs;
  CrewController() {
    crewDataList.addAll(crewList);
  }
  // updateData() {
  //   crewDataList.clear();
  //   crewDataList.addAll(crewList); //Like Fetch from data from api
  // }
}
