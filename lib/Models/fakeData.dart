// ignore_for_file: file_names

import 'package:flutter_application_1/Models/crewModel.dart';

List<CrewModel> crewModel = <CrewModel>[];

class FakeData {
  FakeData() {
    crewModel.add(CrewModel(
        firstName: "Sinan",
        lastName: "arikan",
        title: "Engineer",
        nationality: "TR",
        certificates: [
          Certificates("certificateDate", "certificateName"),
          Certificates("certificateDate", "certificateName"),
          Certificates("certificateDate", "certificateName")
        ]));

    crewModel.add(CrewModel(
        firstName: "Sefa",
        lastName: "arikan",
        title: "Engineer",
        nationality: "TR",
        certificates: [
          Certificates("certificateDate", "certificateName"),
          Certificates("certificateDate", "certificateName"),
          Certificates("certificateDate", "certificateName")
        ]));

    crewModel.add(CrewModel(
        firstName: "Merve",
        lastName: "arikan",
        title: "Engineer",
        nationality: "TR",
        certificates: [
          Certificates("certificateDate", "certificateName"),
          Certificates("certificateDate", "certificateName"),
          Certificates("certificateDate", "certificateName")
        ]));
  }
}
