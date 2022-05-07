// ignore_for_file: file_names

import 'package:flutter_application_1/Models/crewCertificate.dart';

class CrewModel {
  CrewModel(
      {this.title,
      this.firstName,
      this.lastName,
      this.nationality,
      this.certificates});

  String? title;
  String? firstName;
  String? lastName;
  String? nationality;

  List<Certificates>? certificates;
}
