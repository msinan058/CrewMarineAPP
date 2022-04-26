// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/fakeData.dart';

class CrewPage extends StatefulWidget {
  const CrewPage({Key? key}) : super(key: key);

  @override
  State<CrewPage> createState() => _CrewPageState();
}

class _CrewPageState extends State<CrewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("crew"),
    );
  }
}
