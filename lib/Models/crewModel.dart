// ignore_for_file: file_names

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

class Certificates {
  Certificates(this.certificateDate, this.certificateName);

  String certificateName;
  String certificateDate;
}
