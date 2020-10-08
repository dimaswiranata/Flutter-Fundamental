import 'package:flutter/material.dart';
import 'package:my_first_flutter/login_oage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

// TEXT WIDGET & TEXT STYLE

// Text
// Text("Hello World")

// Text Center Style on Body
//
// Center(child: Text("Hello World"))

// Center Container with Style (color, width, height) => Text with Style (color, fontStyle, fontSize, fontWeight) and div with Style (maxLines, overflow, softWrap, textAlign)
//
// Center(
//   child: Container(
//       color: Colors.lightBlue,
//       width: 150,
//       height: 50,
//       child: Text(
//          "Saya sedang melatih kemampuan flutter saya dengan belajar di bwa",
//          maxLines: 2,
//          overflow : TextOverflow.clip,
//          softWrap: false,
//          textAlign : TextAlign.center,
//          style: TextStyle(
//            color: Colors.white,
//            fontStyle: FontStyle.italic,
//            fontSize: 14
//            fontWeight: FontWeight.w700
//          ),
//      ))),

// Text Style wtih Font-Family and Text-Decoration

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("MyApp"),),
//         body: Center(
//           child: Text(
//             "Ini adalah Text",
//             style: TextStyle(
//               fontFamily: "CrashLandingBB",
//               fontSize: 30,
//               fontStyle: FontStyle.italic,
//               // for decoration
//               decoration: TextDecoration.underline,
//               decorationColor: Colors.red,
//               decorationThickness: 5,
//               decorationStyle: TextDecorationStyle.wavy
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ROW & COLUMN WIDGET

//  Column(
//    mainAxisAlignment: MainAxisAlignment.center/end/center,
//    children: <Widget>[
//        Text("Text 1"),
//        Text("Text 2"),
//    ],
//  ),

//  Row(
//    mainAxisAlignment: MainAxisAlignment.center/end/center,
//    children: <Widget>[
//        Text("Text 1"),
//        Text("Text 2"),
//    ],
//  ),

// row & column combine

// Row(
//    mainAxisAlignment: MainAxisAlignment.end,
//    crossAxisAlignment: CrossAxisAlignment.center,
//    children: <Widget>[
//      Text("Text 1"),
//      Text("Text 2"),
//      Text("Text 3"),
//      Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          Text("Text 1"),
//          Text("Text 2"),
//          Text("Text 3"),
//        ],
//      ),
//      Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          Text("Text 1"),
//          Text("Text 2"),
//          Text("Text 3"),
//        ],
//      ),
//    ],
//  ),

// CONTAINER WIDGET 

// sama spt DIV / VIEW di React

// Container(
//   color: Colors.red,
//   margin: EdgeInsets.all(10),
//   margin: EdgeInsets.fromLTRB(10, 15, 20, 25), // for L T R B
//   padding: EdgeInsets.all(10),
//   padding: EdgeInsets.only(bottom: 20, top: 20), // only on bottom/left/top/right
//   child: Container(
//     color: Colors.blue,
//     margin: EdgeInsets.all(10),
//     decoration: BoxDecoration(
//       color: Colors.blue // colors on container and on BoxDecoration are the same
//       borderRadius: BorderRadius.circular(10),
//       gradient: LinearGradient(
//        begin: Alignment.topLeft,
//        end: Alignment.bottomRight,
//        colors: <Color>[
//          Colors.amber,
//          Colors.blue
//        ]
//       ),
//     ),
//   ),
// ),

// STATELESS  & STATEFUL WIDGET

// STATELESS => Widget yang tidak mempunyai state / keadaan atau minim perubahan pada apps tersebut

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("MyApp"),),
//         body: Container(
//           isi deh tuh
//         ),
//       ),
//     );
//   }
// }

// STATEFUL =>  Widget yang mempunyai state / keadaan  atau banyak perubahan pada apps tersebut

// contoh statefull

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
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

// ANONYMOUS METHOD

// => method yang tidak memiliki nama

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String message = "Ini adalah Text";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("MyApp"),
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(message),
//                 RaisedButton(
//                   child: Text("Tekan Saya"),
//                   onPressed: () {
//                     setState(() {
//                       message = "tombol sudah diTekan";
//                     });
//                   },
//                 )
//               ],
//             ),
//           )),
//     );
//   }
// }

// LIST VIEW

// 1. LIST WIDGET DEFINITION AND LOOPING FOR LIST AND USE LIST VIEW

// class _MyAppState extends State<MyApp> {
//   // definisi loop pada dart
//   List<Widget> widgets = [];

//   _MyAppState() {
//     // widgets.add(Text("Data 1"));
//     // widgets.add(Text("Data 2"));
//     // looping pada dart
//     for (int i = 0; i < 20; i++) 
//       widgets.add(Text("data ke " + i.toString(), style: TextStyle(fontSize: 35),));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("MyApp"),
//           ),
//           body: ListView(
//             children: <Widget>[
//               Row( // for Horizontal use mainAxisAlignment for Vertical use crossAxisAlignment
//                 mainAxisAlignment: MainAxisAlignment.center, // bisa start/end/center/spaceBetween/spaceEvenly
//                 children: <Widget>[
//                   RaisedButton(onPressed: null, child: Text("Tambah Data")),
//                   RaisedButton(onPressed: null, child: Text("Hapus Data")),
//                 ],
//               ),
//               Column( // for Horizontal use crossAxisAlignment for Vertical use mainAxisAlignment
//                 crossAxisAlignment: CrossAxisAlignment.start, // bisa start/end/center/spaceBetween/spaceEvenly
//                 children: widgets
//               ),
//             ],
//           )
//         ),
//     );
//   }
// }

// 2. LIST WIDGET DEFINITION AND ADD & REMOVE ITEM ON LIST

// class _MyAppState extends State<MyApp> {
//   // definisi loop pada dart
//   List<Widget> widgets = [];

//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("MyApp"),
//           ),
//           body: ListView(
//             children: <Widget>[
//               Row( // for Horizontal use mainAxisAlignment for Vertical use crossAxisAlignment
//                 mainAxisAlignment: MainAxisAlignment.center, // bisa start/end/center/spaceBetween/spaceEvenly
//                 children: <Widget>[
//                   RaisedButton(
//                     child: Text("Tambah Data"),
//                     onPressed: () {
//                       setState(() {
//                         widgets.add(Text(
//                           "Data ke-" + counter.toString(),
//                           style: TextStyle( fontSize: 30 ),
//                           ));
//                         counter++;
//                       });
//                     },
//                   ),
//                   RaisedButton(
//                     child: Text("Hapus Data"),
//                     onPressed: () {
//                       setState(() {
//                         widgets.removeLast();
//                         counter--;
//                       });
//                     }, 
//                   ),
//                 ],
//               ),
//               Column( // for Horizontal use crossAxisAlignment for Vertical use mainAxisAlignment
//                 crossAxisAlignment: CrossAxisAlignment.start, // bisa start/end/center/spaceBetween/spaceEvenly
//                 children: widgets
//               ),
//             ],
//           )),
//     );
//   }
// }

// ANIMATED CONTAINER & GESTURE DETECTOR

// 1. ANIMATED CONTAINER => memberikan animasi secara otomatis terhadap perubahan

// 2. GESTURE DETECTOR => sama seperti Touchable di React dengan onTap untuk onPress

// class _MyAppState extends State<MyApp> {
//   Random random = Random(); // Generate random integer

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("MyApp"),
//           ),
//           body: Center(child: 
//             GestureDetector( // GestureDetector sama seperti Touchable di React
//               onTap: () { // sama seperti onPress
//                 setState(() {});
//               },
//               child: AnimatedContainer(
//                 color: 
//                   Color.fromARGB( // jadi ARGB => A untuk transparansi bernilai 0-255 dan RGB channel warna biasa
//                     255, 
//                     random.nextInt(256),
//                     random.nextInt(256), 
//                     random.nextInt(256)
//                   ), 
//                 duration: Duration(seconds: 1),
//                 width: 50.0 + random.nextInt(101), // jadi width bernilai Double dan nextInt(max) bernilai 0 sampai max, jadi 50.0 disetting untuk awalan apa mendapat nilai 0 jadi max = 150
//                 height: 50.0 + random.nextInt(101),
//               ),
//             ),
//           ),
//       ),
//     );
//   }
// }

// STACK AND ALIGN WIDGET

// STACK <=> LAYER

// 1. Flexible Widget untuk flex

// 2. align untuk positioning component

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("MyApp"),),
//         body: Stack(
//           // cara bikin background pake Stack
//           children: <Widget>[
//             Column( // Column dengan Flexible
//               children : <Widget>[
//                 Flexible( // Flexible Widget untuk flex 1 untuk Row atas
//                   flex: 1, 
//                   child: Row( // Row atas
//                     children: <Widget>[
//                       Flexible(
//                         flex: 1, 
//                         child: Container(
//                           color: Colors.white
//                         )
//                       ),
//                       Flexible(
//                         flex: 1, 
//                         child: Container(
//                           color: Colors.black12
//                         )
//                       ),
//                     ],
//                   )
//                 ),
//                 Flexible( // Flex Bawah untuk Row Bawah
//                   flex: 1, 
//                   child: Row( // Row bawah
//                     children: <Widget>[
//                       Flexible(
//                         flex: 1, 
//                         child: Container(
//                           color: Colors.black12
//                         )
//                       ),
//                       Flexible(
//                         flex: 1, 
//                         child: Container(
//                           color: Colors.white
//                         )
//                       ),
//                     ],
//                   )
//                 ),
//               ],
//             ),
//             // ListView & Main Content
//             ListView(
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Text(
//                         "Ini adalah Text yang ada dilapisan tengah dari Stack",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             // Button di Tengah Bawah
//             Align( // Untuk positioning
//               // alignment: Alignment.bottomRight,
//               alignment: Alignment(0.8, 0.9), // for custom
//               // x untuk Horizontal, y untuk Vertical, 
//               // nilai x paling kiri (-1), tengah (0), paling kanan(1)
//               // nilai y paling bawah (-1), tengah (0), paling atas(1)
//               child: RaisedButton(
//                 onPressed: () {}, 
//                 child: Text("My Button"),
//                 color: Colors.amber,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// IMAGE WIDGET

// Image widget bisa dari network dan folder assets dan container sebagai parent
// dan fit : BoxFit dan repeat sebagai styling 

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("MyApp"),),
//         body: Center(
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.black,
//             padding: EdgeInsets.all(3),
//             child:
//              Image(
//               image: NetworkImage(
//                  "https://i.pinimg.com/originals/a7/d0/ca/a7d0ca519cb30362701f86d645b20391.jpg",
//               ),
//               image: AssetImage( // jangan lupa di daftarin dulu di pubspec.yaml
//                 "assets/logo.png",
//               ),
//               fit: BoxFit.contain, // bisa none, contain, cover, fill, fitHeight, fitWidth, scaleDown
//               repeat: ImageRepeat.repeat,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// NAVIGATION MULTI PAGE / SCREEN

// 1. Push Replacement => Misal "login page" ke "main page", diklik back tidak bisa kembali ke 
// "login page" dengan arti "login page" ditimpa/diganti dengan "main page".

// 2. Push => "main page" ditumpuk/dihalangi dengan "second page", tapi masih bisa kembali ke "main page"

// 3. Pop => untuk menghilangkan page yang sedang aktif dan kembali ke page yang dihalangi/ditimpa