import 'package:flutter/material.dart';

// STATELESS => Widget yang tidak mempunyai state / keadaan atau minim perubahan pada apps tersebut

// class BelajarStatelessStatefulWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("MyApp"),),
//         body: Container(
//           child: Center(
//             child: Text("Hello World"),
//           ),
//         ),
//       ),
//     );
//   }
// }

// STATEFUL =>  Widget yang mempunyai state / keadaan  atau banyak perubahan pada apps tersebut

class BelajarStatelessStateful extends StatefulWidget {
  @override
  _BelajarStatelessStatefulState createState() => _BelajarStatelessStatefulState();
}

class _BelajarStatelessStatefulState extends State<BelajarStatelessStateful> {
  
  int number = 0;

  void tekanTombol() {
    // setState mengubah tampilan sesuai dengan state yang ada saat ini
    setState(() {
      number = number + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()) // toDouble() karena "number" dibentukan sbg Double
              ),
              // button on dart
              RaisedButton(
                child: Text("Tambah Bilangan"),
                onPressed: tekanTombol, // onPressed to function tekanTombol()
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class BelajarStatelessStatefulWidget extends StatefulWidget {
//   @override
//   _BelajarStatelessStatefulWidgetState createState() => _BelajarStatelessStatefulWidgetState();
// }

// class _BelajarStatelessStatefulWidget extends State<BelajarStatelessStatefulWidget> {
//   int number = 0;

//   void tekanTombol() {
//     // setState mengubah tampilan sesuai dengan state yang ada saat ini
//     setState(() {
//       number = number + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("MyApp"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 number.toString(),
//                 style: TextStyle(fontSize: 10 + number.toDouble()) // toDouble() karena "number" dibentukan sbg Double
//               ),
//               // button on dart
//               RaisedButton(
//                 child: Text("Tambah Bilangan"),
//                 onPressed: tekanTombol, // onPressed to function tekanTombol()
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }