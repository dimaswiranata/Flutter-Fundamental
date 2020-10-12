import 'package:flutter/material.dart';

// class BelajarRowColumn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("Belajar Text"),),
//         body: Column( // for Horizontal use crossAxisAlignment for Vertical use mainAxisAlignment
//           mainAxisAlignment: MainAxisAlignment.center, //center/end/center,
//           children: <Widget>[
//             Text("Text 1"),
//             Text("Text 2"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BelajarRowColumn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("Belajar Text"),),
//         body: Row( // for Horizontal use mainAxisAlignment for Vertical use crossAxisAlignment
//           mainAxisAlignment: MainAxisAlignment.spaceAround, //center/end/center,
//           children: <Widget>[
//             Text("Text 1"),
//             Text("Text 2"),
//           ],
//         ),
//       ),
//     );
//   }
// }

class BelajarRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title : Text("Belajar Text"),),
        body:  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Text 1"),
                Text("Text 2"),
                Text("Text 3"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}