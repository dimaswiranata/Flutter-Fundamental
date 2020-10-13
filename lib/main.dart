import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Product_Card/belajar_product_card.dart';
import 'package:my_first_flutter/course/Belajar_Provider/belajar_provider.dart';
void main() async {
  // BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BelajarProvider(),
    );
  }
}