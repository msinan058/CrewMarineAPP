// ignore_for_file: file_names

import 'package:flutter_application_1/Models/crewCertificate.dart';
import 'package:flutter_application_1/Models/crewModel.dart';

List<CrewModel> crewList = <CrewModel>[];

class FakeData {
  FakeData() {
    crewList.add(CrewModel(
        firstName: "Sinan",
        lastName: "arikan",
        title: "Engineer",
        nationality: "TR",
        certificates: [
          Certificates("01.06.2018", "Sertifika 1"),
          Certificates("01.01.06.2020", "Sertifika 2"),
        ]));

    crewList.add(CrewModel(
        firstName: "Sefa",
        lastName: "Arsay",
        title: "Architect",
        nationality: "EN",
        certificates: [
          Certificates("01.06.2018", "Sertifika 1"),
          Certificates("01.02.06.2020", "Sertifika 2"),
          Certificates("01.06.2018", "Sertifika 3"),
          Certificates("01.06.2022", "Sertifika 4"),
        ]));

    crewList.add(CrewModel(
        firstName: "Merve",
        lastName: "Yolcu",
        title: "Teacher",
        nationality: "AU",
        certificates: [
          Certificates("01.06.2018", "Sertifika 1"),
          Certificates("01.02.2013", "Sertifika 2"),
          Certificates("01.06.2020", "Sertifika 3")
        ]));
  }
}
