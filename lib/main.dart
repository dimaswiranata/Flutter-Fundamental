import 'package:flutter/material.dart';
// import 'package:my_first_flutter/course/Belajar_File_PIcker/belajar_file_picker.dart';
import 'course/Belajar_Grafik/points_line_chart.dart';
void main() async {
  // BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PointsLineChart(),
    );
  }
}