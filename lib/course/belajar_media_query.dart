// MEDIA QUERY

// Penggunaan media untuk MediaQuery untuk Width dan Height total serta Orientation

// Example : 
// MediaQuery.of(context).size.width => width: MediaQuery.of(context).size.width / 3
// MediaQuery.of(context).size.height => height: MediaQuery.of(context).size.height / 2
// MediaQuery.of(context).orientation => MediaQuery.of(context).orientation == Orientation.portrait

// Conditional : 
//    Rumus => (syarat) ? kalau benar : kalau salah
// EXAMPLE : 
// (MediaQuery.of(context).orientation == Orientation.portrait) ?
//    (
//      Column(
//        children: generateContainer(),
//      ) 
//    ) : (
//      Row(
//        children: generateContainer(),
//      ) 
//    )

import 'package:flutter/material.dart';

class BelajarMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title : Text("Latihan Media Query"),
        ),
        body: Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width / 3,
          height: MediaQuery.of(context).size.height / 2,
        ),
        // body: 
          // EXAMPLE OF CONDITIONAL
          // (MediaQuery.of(context).orientation == Orientation.portrait) ?
          //   (
          //     Column(
          //       children: generateContainer(),
          //     ) 
          //   ) : (
          //     Row(
          //       children: generateContainer(),
          //     ) 
          //   )
      ),
    );
  }

  //   // Conditional
  //   // (syarat) ? kalau benar : kalau salah

  List<Widget> generateContainer() {
    return(
      <Widget>[
        Container(
          color: Colors.red, 
          width: 100, 
          height: 100,
        ),
        Container(
          color: Colors.green, 
          width: 100, 
          height: 100,
        ),
        Container(
          color: Colors.blue, 
          width: 100, 
          height: 100,
        ),
      ]
    );
  }
}
