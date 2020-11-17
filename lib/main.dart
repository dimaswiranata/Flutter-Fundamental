import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Flutter_html/belajar_flutter_html.dart';
// import 'package:my_first_flutter/course/Belajar_Grafik/time_and_chart.dart';
void main() async {
  // BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BelajarFlutterHtml(),
    );
  }
}