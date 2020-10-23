import 'package:flutter/material.dart';
import 'course/Belajar_Scoped_Model/belajar_scoped_model.dart';
void main() async {
  // BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BelajarScopedModel(),
    );
  }
}