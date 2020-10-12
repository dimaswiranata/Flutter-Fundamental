import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/BelajarMVVM/belajar_mvvm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BelajarMVVM(),
    );
  }
}