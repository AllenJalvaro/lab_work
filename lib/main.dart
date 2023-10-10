import 'package:flutter/material.dart';
import 'package:lab_work/Screens/FirstScreen.dart';

void main() {
  runApp(LabAct());
}

class LabAct extends StatelessWidget {
  const LabAct({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
