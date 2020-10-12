import 'package:flutter/material.dart';

class BelajarList extends StatefulWidget {
  @override
  _BelajarListState createState() => _BelajarListState();
}

// 1. LIST WIDGET DEFINITION AND LOOPING FOR LIST AND USE LIST VIEW

class _BelajarListState extends State<BelajarList> {
  // definisi loop pada dart
  List<Widget> widgets = [];

  _BelajarListState() {
    // widgets.add(Text("Data 1"));
    // widgets.add(Text("Data 2"));
    // looping pada dart
    for (int i = 0; i < 20; i++) 
      widgets.add(Text("data ke " + i.toString(), style: TextStyle(fontSize: 35),));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: ListView(
          children: <Widget>[
            Row( // for Horizontal use mainAxisAlignment for Vertical use crossAxisAlignment
              mainAxisAlignment: MainAxisAlignment.center, // bisa start/end/center/spaceBetween/spaceEvenly
              children: <Widget>[
                RaisedButton(onPressed: (){}, child: Text("Tambah Data")),
                RaisedButton(onPressed: (){}, child: Text("Hapus Data")),
              ],
            ),
            Column( // for Horizontal use crossAxisAlignment for Vertical use mainAxisAlignment
              crossAxisAlignment: CrossAxisAlignment.start, // bisa start/end/center/spaceBetween/spaceEvenly
              children: widgets
            ),
          ],
        )
      ),
    );
  }
}

// 2. LIST WIDGET DEFINITION AND ADD & REMOVE ITEM ON LIST

// class _BelajarListState extends State<BelajarList> {
//   // definisi loop pada dart
//   List<Widget> widgets = [];

//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("MyApp"),
//         ),
//         body: ListView(
//           children: <Widget>[
//             Row( // for Horizontal use mainAxisAlignment for Vertical use crossAxisAlignment
//               mainAxisAlignment: MainAxisAlignment.center, // bisa start/end/center/spaceBetween/spaceEvenly
//               children: <Widget>[
//                 RaisedButton(
//                   child: Text("Tambah Data"),
//                   onPressed: () {
//                     setState(() {
//                       widgets.add(
//                         Text(
//                           "Data ke-" + counter.toString(),
//                           style: TextStyle( fontSize: 30 ),
//                         ),
//                       );
//                       counter++;
//                       },
//                     );
//                   },
//                 ),
//                 RaisedButton(
//                   child: Text("Hapus Data"),
//                   onPressed: () {
//                     setState(() {
//                       widgets.removeLast();
//                       counter--;
//                     });
//                   }, 
//                 ),
//               ],
//             ),
//             Column( // for Horizontal use crossAxisAlignment for Vertical use mainAxisAlignment
//               crossAxisAlignment: CrossAxisAlignment.start, // bisa start/end/center/spaceBetween/spaceEvenly
//               children: widgets
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }