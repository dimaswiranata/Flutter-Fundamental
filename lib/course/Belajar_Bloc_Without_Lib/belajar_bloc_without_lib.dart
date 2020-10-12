// BLoC ( BUSSINESS LOGIC COMPONENT ) WITHOUT LIBRARY

// Konsep =>

// 1. Pertama-tama muncul sebuah event yang men-trigger perubahan dari state
// Example : onPressed

// 2. Event tersebut dimasukan ke dalam sebuah BLoC, didalam BLoC akan
// dilakukan proses "Mapping Event to new State" => event akan diproses
// oleh BLoC kemudian menghasilkan State yang baru.

// 3. State yang baru tersebut akan mengubah Application UI

// Stream Controller akan dipakai dalam BLoC 
// Stream Controller => Component yang mengontrol stream/aliran data

// BLoC => EVENT TRIGGER (APPLICATION UI) ---> EVENT ---> SINK ---> EVENT<STREAM CONTROLLER> ---> mapEventToState Method 
// ---> SINK ---> STATE<STREAM CONTROLLER> ---> NEW STATE (APPLICATION UI)

import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Bloc_Without_Lib/color_bloc.dart';

class BelajarBlocWithoutLibrary extends StatefulWidget {
  @override
  _BelajarBlocWithoutLibraryState createState() => _BelajarBlocWithoutLibraryState();
}

class _BelajarBlocWithoutLibraryState extends State<BelajarBlocWithoutLibrary> {
  ColorBloc bloc = ColorBloc(); // Inisialisasi ColorBloc di color_bloc.dart

  @override
  void dispose() {
    bloc.dispose(); // Implementasi dispose method untuk membersihkan saluran
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: (){
                // cara men-trigger Event dan masuk ke SINK EVENT STREAM CONTROLLER
                bloc.eventSink.add(ColorEvent.to_amber);
              },
              backgroundColor: Colors.amber,
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: (){
                // cara men-trigger Event dan masuk ke SINK EVENT STREAM CONTROLLER
                bloc.eventSink.add(ColorEvent.to_light_blue);
              },
              backgroundColor: Colors.lightBlue,
            ),
          ]
        ),
        appBar: AppBar(
          title: Text("BLoC tanpa Library"),
        ),
        body: Center(
          // cara men-get New State dari STATE STREAM yang sudah mendapat aliran/stream dari STATE STREAM CONTROLLER
          child: StreamBuilder(
            stream: bloc.stateStream, 
            initialData: Colors.amber, 
            builder: (context, snapshot) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 100,
                height: 100,
                color: snapshot.data, // get new state
              );
            },
          ),
        ),
      ),
    );
  }
}