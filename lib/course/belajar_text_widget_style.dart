import 'package:flutter/material.dart';

class BelajarText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title : Text("Belajar Text"),),
        body: Center(
          child: Text(
            "Ini adalah Text",
            style: TextStyle(
              fontFamily: "CrashLandingBB",
              fontSize: 30,
              fontStyle: FontStyle.italic,
              // for decoration
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy
            ),
          ),
        ),
      ),
    );
  }
}

// class BelajarText extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("Belajar Text"),),
//         body: Center(
//           child: Container(
//             color: Colors.lightBlue,
//             width: 150,
//             height: 50,
//             child: Text(
//               "Saya sedang melatih kemampuan flutter saya dengan belajar di bwa",
//               maxLines: 2,
//               overflow : TextOverflow.clip,
//               softWrap: false,
//               textAlign : TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontStyle: FontStyle.italic,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w700
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }