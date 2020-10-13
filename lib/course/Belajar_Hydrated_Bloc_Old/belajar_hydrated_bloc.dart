// HYDRATED BLOC STATE MANAGEMENT => DAPAT MENYIMPAN STATE TERAKHIR SECARA OTOMATIS

// import 'package:hydrated_bloc/hydrated_bloc.dart';

// fase berikutnya bisa dilihat di color_hydrated_bloc.dart
// kemudian masuk lagi ke belajar_hydrate_bloc.dart

// import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:bloc/bloc.dart';

// Kemuadian tambahkan di main.dart 
// void main() async {
//   BlocSupervisor.delegate = await HydratedBlocDelegate.build();
//   runApp(MyApp());
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_flutter/course/Belajar_Hydrated_Bloc_Old/color_hydrated_bloc.dart';

class BelajarHydratedBlocOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorHydratedBlocLib>(
        builder: (context) => ColorHydratedBlocLib(),
        child: ColorHydratedBlocLibPage(),
      ),
    );
  }
}

class ColorHydratedBlocLibPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorHydratedBlocLib bloc = BlocProvider.of<ColorHydratedBlocLib>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){
              bloc.dispatch(ColorEventHydrated.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: (){
              bloc.dispatch(ColorEventHydrated.to_light_blue);
            },
            backgroundColor: Colors.lightBlue,
          ),
        ]
      ),
      appBar: AppBar(
        title: Text("Hydrated Bloc"),
      ),
      body: Center(
        child: BlocBuilder<ColorHydratedBlocLib, Color>(
          builder: (BuildContext context, currentColor) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 100,
            height: 100,
            color: currentColor,
          ),
        ),
      ),
    );
  }
}