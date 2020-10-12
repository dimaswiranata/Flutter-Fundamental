// --------------------------------------------------

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

// --------------------------------------------------

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

// --------------------------------------------------

// CONTAINER WIDGET 

// sama spt DIV / VIEW di React

// 1. Penggunaan BorderRadius, decoration(BoxDecoration), gradient(LinearGradient(begin, end, colors))

// Container(
//   color: Colors.red,
//   margin: EdgeInsets.all(10),
//   margin: EdgeInsets.fromLTRB(10, 15, 20, 25), // for L T R B
//   padding: EdgeInsets.all(10),
//   padding: EdgeInsets.only(bottom: 20, top: 20), // only on bottom/left/top/right
//   child: Container(
//     color: Colors.blue,
//     margin: EdgeInsets.all(10),
//     decoration: BoxDecoration( // untuk mendekorasi Container Box
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

// --------------------------------------------------

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

// --------------------------------------------------

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

// --------------------------------------------------

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

// --------------------------------------------------

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

// --------------------------------------------------

// STACK AND ALIGN WIDGET

// STACK <=> LAYER

// 1. Flexible Widget untuk flex

// 2. align untuk positioning component terhadap Parent (Container/Stack)

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title : Text("MyApp"),),
//         body: Stack(
//           children: <Widget>[
//             // cara bikin background pake Stack
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

// --------------------------------------------------

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

// --------------------------------------------------

// NAVIGATION MULTI PAGE / SCREEN

// 1. Push Replacement => Misal "login page" ke "main page", diklik back tidak bisa kembali ke 
// "login page" dengan arti "login page" ditimpa/diganti dengan "main page".
// implementasi on lib/login_page.dart

// 2. Push => "main page" ditumpuk/dihalangi dengan "second page", tapi masih bisa kembali ke "main page"
// implementasi on lib/main_page.dart

// 3. Pop => untuk menghilangkan page yang sedang aktif dan kembali ke page yang dihalangi/ditimpa
// implementasi on lib/second_page.dart

// on lib/main.dart
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

// --------------------------------------------------

// CARD WIDGET

// 1. Card Widget hanya bisa diisi oleh satu Widget, apabila
// ingin lebih maka gunakan Row atau Column, elevation untuk menjarak Card dengan Background

// 2. Contoh dalam membuat component Card yang Reusable dengan parameter
// "IconData" untuk mengisi "Icon"
// "String" untuk mengisi "Text"

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor : Colors.green,
//         body: Container(
//           margin: EdgeInsets.all(10),
//           child: ListView(
//             children: <Widget>[
//               buildCard(Icons.account_box, 'Account Box'),
//               buildCard(Icons.adb, 'Serangga Android'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Card buildCard(IconData iconData, String text) {
//     return( 
//       Card( // Card cuma bisa diisi sama 1 widget, apabila ingin lebih dari 1 widget, gunakan row atau column
//         elevation: 5, // Untuk menjadi jarak dari card ke background
//         child: Row(
//           children: <Widget>[
//             Container(
//               margin : EdgeInsets.all(5),
//               child: Icon(iconData, color: Colors.green),
//             ),
//             Text(text)
//           ],
//         ),
//       )
//     );
//   }
// }

// --------------------------------------------------

// TEXT FIELD WIDGET AND TEXT FIELD DECORATION

// 1. Penggunaan TextField dengan mendefinisikan "controller" "TextEditingController"
// sebagai controller untuk TextField kemudian menampilkan dengan "controller.text"

// 2. Penggunaan atribut dari TextField seperti obscureText untuk Password dan MaxLength untuk max dari karakter

// class _MyAppState extends State<MyApp> {
//   TextEditingController controller = TextEditingController(); // seperti variable  untuk mengambil isi dari TextField, untuk menampilkannya dgn "controller.text"

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home : Scaffold(
//         appBar: AppBar(title: Text("My App")),
//         body : Container(
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               TextField(
//                 obscureText: true, // untuk password
//                 onChanged: (value) {
//                   setState(() {});
//                 },
//                 controller: controller, // inisiasi controller
//               ),
//               Text(controller.text) // menampilkan isi TextField
//             ],
//           ),
//         )
//       ),
//     );
//   }
// }

// 3. Decoration TextField dengan suffix, prefix, filled, fillColor, label, hint, border, icon

// class _MyAppState extends State<MyApp> {
//   TextEditingController controller = TextEditingController(); // seperti variable  untuk mengambil isi dari TextField, untuk menampilkannya dgn "controller.text"

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home : Scaffold(
//         appBar: AppBar(title: Text("My App")),
//         body : Container(
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               TextField(
//                 decoration: 
//                   InputDecoration(
//                     fillColor: Colors.lightGreen[100],
//                     filled: true,
                    
//                     icon: Icon(Icons.adb), // untuk diluar TextField
                    
//                     prefix: Container(width: 10, height: 10), // untuk pemasanan Widget pada TextField, tidak bisa jika ada 
//                     // prefixText, untuk Container bisa untuk padding dan margin
                    
//                     // atribut prefix
//                     prefixIcon: Icon(Icons.person, color : Colors.green), // icon "pre" didalam TextField
//                     // prefixText: "Name", // Text "pre" didalam TextField
//                     // prefixStyle: TextStyle(color : Colors.green), // Style untuk prefixText

//                     // atribut suffix => sama seperti prefix tapi di belakang
//                     // ada suffix(untuk Widget), suffixIcon, suffixStyle, suffixText

//                     labelText: "Nama Lengkap", // Text Diatas TextField
//                     labelStyle: TextStyle(color : Colors.green), // Style untuk labelText
//                     hintText: "Nama Lengkap", // semacam placeholder
//                     hintStyle: TextStyle(color : Colors.green), // style untuk placeholder/hint
//                     // border: InputBorder.none, // TextField dengan tidak ada border
//                     enabledBorder: 
//                       OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: new BorderSide(color: Colors.green, width: 2)
//                       ),
//                     focusedBorder: 
//                       OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: new BorderSide(color: Colors.green, width: 2)
//                       ),
//                   ),
//                 // obscureText: true, // untuk password
//                 // maxLength: 5,
//                 style: TextStyle(color: Colors.green),
//                 onChanged: (value) {
//                   setState(() {});
//                 },
//                 controller: controller, // inisiasi controller
//               ),
//               Text(controller.text) // menampilkan isi TextField
//             ],
//           ),
//         )
//       ),
//     );
//   }
// }

// --------------------------------------------------

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


// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: NewPage(),
//     );
//   }
// }

// class NewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title : Text("Latihan Media Query"),
//         ),
//         // body: Container(
//         //   color: Colors.red,
//         //   width: MediaQuery.of(context).size.width / 3,
//         //   height: MediaQuery.of(context).size.height / 2,
//         // ),
//         body: 
//           // EXAMPLE OF CONDITIONAL
//           (MediaQuery.of(context).orientation == Orientation.portrait) ?
//             (
//               Column(
//                 children: generateContainer(),
//               ) 
//             ) : (
//               Row(
//                 children: generateContainer(),
//               ) 
//             )
//       ),
//     );
//   }

//   // Conditional
//   // (syarat) ? kalau benar : kalau salah

//   List<Widget> generateContainer() {
//     return(
//       <Widget>[
//         Container(
//           color: Colors.red, 
//           width: 100, 
//           height: 100,
//         ),
//         Container(
//           color: Colors.green, 
//           width: 100, 
//           height: 100,
//         ),
//         Container(
//           color: Colors.blue, 
//           width: 100, 
//           height: 100,
//         ),
//       ]
//     );
//   }
// }

// --------------------------------------------------

// OPACITY ( CUSTOM CARD DENGAN LATAR BELAKANG BERCORAK )

// 1. Menggunakan Stack untuk Background Gradient dan Custom Card

// 2. Custom Card menggunakan BoxSize dengan width dan height menggunakan Media Query untuk Flexiblity

// 3. Didalam BoxSize ada Stack untuk Background, Image dan Caption

// 4. Untuk Background Container menggunakan decoration(BoxDecoration) untuk Image Background untuk menyesuikan Card

// 5. Untuk Image Container menggunakan decoration(BoxDecoration) untuk borderRadius menyesuaikan Card dan 
// height menggunakan Media Query dengan menyesuaikan dengan Card

// 6. Penggunaan Spacer sebagai gap dari Row/Column



// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: NewPage(),
//     );
//   }
// }

// class NewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title : Text(
//             "Custom Card Example",
//             style: TextStyle(color: Colors.white),
//           ),
//           backgroundColor: Color(0xFF8C062F), // 0xFF + code warna
//         ),
//         body: Stack(
//           children: <Widget>[
//             // Background
//             Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter
//                 ),
//               ),
//             ),
//             // Custom Card
//             Center(
//               child: SizedBox(
//                 width: MediaQuery.of(context).size.width * 0.8,
//                 height: MediaQuery.of(context).size.height * 0.7,
//                 child: Card(
//                   // shape: RoundedRectangleBorder(
//                   //   side: BorderSide(color: Colors.black, width: 5),
//                   //   borderRadius: BorderRadius.circular(20),
//                   // ),
//                   elevation: 10,
//                   child: Stack(
//                     children: <Widget>[
//                       // Background untuk Card
//                       Opacity(
//                         opacity: 0.7,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4), // border untuk menyesuaikan card
//                             image: DecorationImage(
//                               image: NetworkImage(
//                                 "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png",
//                               ),
//                               fit: BoxFit.cover
//                             ),
//                           ),
//                         ),
//                       ),
//                       // Image untuk Card
//                       Container(
//                         height: MediaQuery.of(context).size.height * 0.35,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.only(
//                             topRight: Radius.circular(4),
//                             topLeft: Radius.circular(4),
//                           ),
//                           image: DecorationImage(
//                             image: NetworkImage(
//                               "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"
//                             ),
//                             fit: BoxFit.cover
//                           ),
//                         ),
//                       ),
//                       // Caption Untuk Card ( Dengan marginTop yang telah disesuaikan )
//                       Container(
//                         margin: EdgeInsets.fromLTRB(
//                           20, 
//                           50 + MediaQuery.of(context).size.height * 0.35, 
//                           20, 
//                           20
//                         ),
//                         child: Center(
//                           child: Column(
//                             children: <Widget>[
//                               Text(
//                                 "Beautiful Sunset at Paddy Field",
//                                 maxLines: 2,
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   color: Color(0xFFF56D5D),
//                                   fontSize: 25
//                                 ),
//                               ),
//                               Container(
//                                 margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: <Widget>[
//                                     Text(
//                                       "Posted on  ",
//                                       style: TextStyle(
//                                         color: Colors.grey,
//                                         fontSize: 12
//                                       ),
//                                     ),
//                                     Text(
//                                       "Oct 9, 2019",
//                                       style: TextStyle(
//                                         color: Color(0xFFF56D5D),
//                                         fontSize: 12
//                                       ),
//                                     ),
//                                   ]
//                                 ),
//                               ),
//                               Row(
//                                 children: <Widget>[
//                                   Spacer(flex: 13,), // Spacer untuk gap antar child Row
//                                   // Icon
//                                   Icon(Icons.thumb_up, size:18, color: Colors.grey),
//                                   Spacer(flex: 1,),
//                                   // Text
//                                   Text("99", style: TextStyle(color: Colors.grey),),
//                                   Spacer(flex: 5,),
//                                   // Icon
//                                   Icon(Icons.comment, size:18, color: Colors.grey),
//                                   Spacer(flex: 1,),
//                                   //Text
//                                   Text("888", style: TextStyle(color: Colors.grey),),
//                                   Spacer(flex: 13,),
//                                 ],
//                               ),
//                             ]
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------

// TAB BAR

// 1. Penggunaan Tab Bar dengan menginisialisasi DefaultTabController dan Panjangnya

// 2. Letakan TabBar pada Bottom pada AppBar dan Desain Tampilan dari setiap TabBar dengan Widget(icon, text, child(Image))

// 3. Page dari Tab diletakan di Body dengan TabBarView dengan children array Widget sebanyak panjang TabBar dan sesuai urutan

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: NewPage(),
//     );
//   }
// }

// class NewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController( // Inisialisasi Tab Controller
//         length: 4, // Length TabBae
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("Contoh Tab Bar"),
//             bottom: TabBar( // Inisialisasi TabBar dibawah Text untuk AppBar
//               tabs: <Widget>[ // TabBar bisa berisi Widget Seperti icon, text, Image
//                 Tab(
//                   icon: Icon(Icons.comment),
//                   text: "Comment"
//                 ),
//                 Tab(
//                   child: Image(image: AssetImage("assets/cute.png")),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.computer),
//                 ),
//                 Tab(
//                   text: "News"
//                 ),
//               ],
//             ),
//           ),
//           body: TabBarView( // Tampilan dari TabBar
//             children: <Widget>[
//               // Tampilan TabBar 1
//               Center(
//                 child: Text("Tab 1")
//               ),
//               // Tampilan TabBar 2
//               Center(
//                 child: Text("Tab 2")
//               ),
//               // Tampilan TabBar 3
//               Center(
//                 child: Text("Tab 3")
//               ),
//               // Tampilan TabBar 4
//               Center(
//                 child: Text("Tab 4")
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------

// QR CODE

// 1. Membuat QR Code dengan memasang "qr_flutter: ^2.1.0+55" terlebih dahulu di pubspec.yml

// 2. Terus meng import 'package:qr_flutter/qr_flutter.dart';

// 3. Kemudian gunakan di body Center QrImage untuk membuat QR Code dan perlu mendefinisikan version
// https://www.qrcode.com/en/about/version.html

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: NewPage(),
//     );
//   }
// }

// class NewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: QrImage(
//             version: 6,
//             backgroundColor: Colors.grey,
//             foregroundColor: Colors.black,
//             errorCorrectionLevel: QrErrorCorrectLevel.M,
//             padding: EdgeInsets.all(30),
//             size: 300, // untuk ukuran 300x300
//             data: "https://www.youtube.com",
//           ),
//         ),
//       ),
//     );
//   }
// }

// 4. Membaca QR Code, QRScan untuk membaca QR Code dan Simple Permission untuk mengatur permission dalam membaca QRCode
// seperti camera dan fibration

// Pasang di pubspec.yaml
// qrscan: ^0.1.6
// permission_handler: ^5.0.1+1

// 5. Terus mengimport 
// import 'package:qrscan/qrscan.dart';
// import 'package:permission_handler/permission_handler.dart';

// 6. Tambah pada manifest di android/app/src/debug/AndroidManifest.xml dan android/app/src/profile/AndroidManifest.xml
// <uses-permission android:name="android.permission.CAMERA"/>
// <uses-permission android:name="android.permission.VIBRATE"/> 

// 7. await Permission.camera.request().isGranted => yaitu apabila user sudah memberi izin untuk mengakses camera maka baru 
// boleh menggunakan scan() dari qrscan dengan syntax " await scan(); "

// 8. String scanResult = await scan(); => scanResult adalah variable untuk mendapatkan String dari hasil scan();

// EXAMPLE CODE: 
// import 'package:flutter/material.dart';
// import 'package:qrscan/qrscan.dart';
// import 'package:permission_handler/permission_handler.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String data = "QR Code Data";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text(
//                 data, 
//                 style: TextStyle(
//                   fontSize: 20, 
//                   fontWeight: FontWeight.w600
//                 ),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   scanQR();
//                 },
//                 child: Text("Scan QR"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void scanQR() async {
//     if (await Permission.camera.request().isGranted) {
//       // Either the permission was already granted before or the user just granted it.
//       String scanResult = await scan();
//       setState(() {
//         data = scanResult;
//       });
//     }
//     if (await Permission.camera.isRestricted) {
//       data = "akses tidak diberikan";
//     }
//   }
// }

// --------------------------------------------------

// CLIP PATH

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Custom Clipper"),),
//         body: Center(
//           child : ClipPath(
//             clipper: MyClipper(), // class untuk membentuk clip Image
//             child: Image(
//               width: 300,
//               image: NetworkImage(
//                 "https://i.pinimg.com/originals/96/37/49/963749a76357028fd70e54bccacffcba.jpg"
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path(); // Inisialisasi Path baru
//     path.lineTo(0, size.height); // tujuan pertama
//     // path.quadraticBezierTo(x1, y1, x2, y2); // x2 dan y2 adalah tujuan kedua 
//     // x1 dan y1 adalah titik kontrol jadi untuk melengkung kebawah jadi x => size.width / 2 dan y => size.height * 0,75
//     path.quadraticBezierTo(size.width / 2, size.height * 0.75, size.width, size.height);
//     path.lineTo(size.width, 0); // tujuan ketiga
//     path.close();
//     return path;
//   }

//   // mulai dari garis kiri atas ke bawah adalah mulai dari 0,0 ke tujuan 0,300
//   // kemudian tujuan ke dua yaitu garis bawah kiri ke kanan, dari 0,300 ke tujuan 300,300
//   // kemudian tujuan ke tiga yaitu garis kanan dari bawah ke atas dari 300,300 ke tujuan 300,0
//   // untuk penutup langsung path.close();

//   // 0,0----300,0
//   //  |       |
//   //  |       |
//   // 0,300---300,300
  
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }

// https://i.pinimg.com/originals/96/37/49/963749a76357028fd70e54bccacffcba.jpg

// --------------------------------------------------

// HTTP REQUEST / KONEKSI KE API (POST METHOD)

// POST API dari https://reqres.in/

// Langkah-langkah 

// 1. Membuat class terlebih dahulu sebagai model, untuk response result 
// nanti akan di modelkan menjadi sebuah class

// 2. Membuat factory method, method untuk memapping dari JSON Object ke class
// yang telah dibuat

// 3. Method untuk memanggil API

// EXAMPLE on post_result_model.dart

// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// // 1. Membuat class terlebih dahulu sebagai model, untuk response result dari API 
// // nanti akan di modelkan menjadi sebuah class

// class PostResult{
//   String id;
//   String name;
//   String job;
//   String created;

//   PostResult({
//     this.id, 
//     this.name, 
//     this.job, 
//     this.created
//   });

//   // 2. Membuat factory method, method untuk memapping dari JSON Object dari RESPONSE RESULT 
//   // ke class yang telah dibuat

//   // dynamic karena bisa saja POST RESPONSE RESULT hasilnya selain String
//   // createPostResult => sebenarnya bebas

//   // isi object disesuaikan dengan RESPONSE RESULT dari API

//   factory PostResult.createPostResult(Map<String, dynamic> object)
//   {
//     return PostResult(
//       id: object['id'],
//       name: object['name'],
//       job: object['job'],
//       created: object['createdAt'],
//     );
//   }

//   // 3. Method untuk memanggil API

//   // connectToAPI => sebenarnya bebas
//   // String name, String job => parameter yang dibutuhkan/Request dari API untuk membuat User baru dan 
//   // mendapat RESPONSE RESULT dari API

//   static Future<PostResult> connectToAPI(String name, String job) async{
//     String apiUrl = "https://reqres.in/api/users";
    
//     // body merupakan kumpulan parameter yang disesuaikan dengan JSON Request kemudian diinput 
//     // dengan paramater yang sudah ditentukan

//     // http POST merupakan method async dengan mengembalikan Future
//     // RESPONSE RESULT dari API disimpan ke apiResult
//     var apiResult = await http.post(apiUrl, body: {
//       "name" : name,
//       "job" : job
//     });

//     // apiResult belum berbentuk JSON, untuk mengubah ke JSON maka
//     // perlu meng import 'dart:convert' as convert;
//     // kemudian decode apiResult ke JSON

//     var jsonObject = convert.jsonDecode(apiResult.body);

//     // kemudian return gabungan dari 3 langkah
//     // apiResult yang merupakan RESPONSE telah diubah menjadi JSON (jsonObject)
//     // kemudian di mapping di factory Method => createPostResult
//     // dan di Model Kan di class PostResult
//     return PostResult.createPostResult(jsonObject); 
//   }

// }

// on Main.dart

// import 'package:my_first_flutter/post_result_model.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   PostResult postResult = null; inisialisasi PostResult dengan diisi dengan "null"

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("API Demo"),),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text(
//                 (postResult != null) ?
//                 (
//                   postResult.id +  // untuk memanggil component yang sudah di modelkan pada PostResult
//                   " | " +
//                   postResult.name +
//                   " | " +
//                   postResult.job +
//                   " | " +
//                   postResult.created
//                 ) : (
//                   "Tidak Ada Data"
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   PostResult
//                     .connectToAPI("Dimas Agusta Wiranata", "Front Emd Developer") // Untuk memanggil PostResult.connectToAPI dan diisi Parameter yang di Request API untuk menghasilkan Response API
//                     .then((value) // me Return hasil dari PostResult.connectToAPI yang telah menjadi JSON
//                       {
//                         setState(() {
//                           postResult = value; 
                              // Kemudian disimpan ke PostResult() postResult yang tadinya null dan 
                              // di update state dengan setState(() {})
//                         });
//                       }
//                     );
//                 },
//                 child: Text("POST/CREATE"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------

// HTTP REQUEST / KONEKSI KE API (GET METHOD)

// STEP - STEP sama seperti POST METHOD

// Example on user_model.dart

// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// class User{
//   String id;
//   String name;

//   User({
//     this.id,
//     this.name
//   });

//   factory User.getUser(Map<String, dynamic> object){
//     return User(
//       id: object['id'].toString(),
//       name: object['first_name'] + " " + object['last_name'],
//     );
//   }

//   static Future<User> connectToAPI(String id) async{
//     String apiUrl = "https://reqres.in/api/users/" + id;

//     var apiResult = await http.get(apiUrl);

//     var jsonObject = convert.jsonDecode(apiResult.body);

//     // Karena Response dari API seperti
//     // data : {
//     //   "id" : "7",
//     //   "email": "janet.weaver@reqres.in",
//     //   "first_name": "Janet",
//     //   "last_name": "Weaver",
//     //   "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg"
//     // }

//     // Maka perlu ditambahkan line sbg berikut pada result yang sudah menjadi JSON(jsonObject) =>
       // Karena Response yang diinginkan API berada di "data":[] 

//     var userData = (jsonObject as Map<String, dynamic>)['data']; 

//     return User.getUser(userData);
//   }
// }

// on Main.dart

// import 'package:my_first_flutter/post_result_model.dart';
// import 'package:my_first_flutter/user_model.dart';

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   PostResult postResult = null;
//   User user = null;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("API Demo"),),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text(
//                 (postResult  != null) ?
//                 (
//                   postResult.id + 
//                   " | " +
//                   postResult.name +
//                   " | " +
//                   postResult.job +
//                   " | " +
//                   postResult.created
//                 ) : (
//                   "Tidak Ada Data"
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               Text(
//                 (user  != null) ?
//                 (
//                   user.id + 
//                   " | " +
//                   user.name 
//                 ) : (
//                   "Tidak Ada Data User"
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   PostResult
//                     .connectToAPI("Dimas Agusta Wiranata", "Front Emd Developer")
//                     .then((value) 
//                       {
//                         setState(() {
//                           postResult = value;
//                         });
//                       }
//                     );
//                 },
//                 child: Text("POST/CREATE"),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   User
//                     .connectToAPI("2")
//                     .then((value) 
//                       {
//                         setState(() {
//                           user = value;
//                         });
//                       }
//                     );
//                 },
//                 child: Text("GET"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------

// HTTP REQUEST / KONEKSI KE API (LIST DATA)

// on list_of_user.dart

// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// class ListUser{
//   String id;
//   String name;

//   ListUser({
//     this.id,
//     this.name
//   });

//   factory ListUser.createListUser(Map<String, dynamic> object){
//     return ListUser(
//       id: object['id'].toString(),
//       name: object['first_name'] + " " + object['last_name'],
//     );
//   }

//   static Future<List<ListUser>> getListUser(String page) async{
//     String apiUrl = "https://reqres.in/api/users?page=" + page;

//     var apiResult = await http.get(apiUrl);

//     var jsonObject = convert.jsonDecode(apiResult.body);

       // Karena Response dari API(jsonObject) seperti
       // "data": [
       //   {
       //     "id": 7,
       //     "email": "michael.lawson@reqres.in",
       //     "first_name": "Michael",
       //     "last_name": "Lawson",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/follettkyle/128.jpg"
       //   },
       //   {
       //     "id": 8,
       //     "email": "lindsay.ferguson@reqres.in",
       //     "first_name": "Lindsay",
       //     "last_name": "Ferguson",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/araa3185/128.jpg"
       //   },
       //   {
       //     "id": 9,
       //     "email": "tobias.funke@reqres.in",
       //     "first_name": "Tobias",
       //     "last_name": "Funke",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/vivekprvr/128.jpg"
       //   },
       //   {
       //     "id": 10,
       //     "email": "byron.fields@reqres.in",
       //     "first_name": "Byron",
       //     "last_name": "Fields",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/russoedu/128.jpg"
       //   },
       //   {
       //     "id": 11,
       //     "email": "george.edwards@reqres.in",
       //     "first_name": "George",
       //     "last_name": "Edwards",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/mrmoiree/128.jpg"
       //   },
       //   {
       //     "id": 12,
       //     "email": "rachel.howell@reqres.in",
       //     "first_name": "Rachel",
       //     "last_name": "Howell",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/hebertialmeida/128.jpg"
       //   }
       // ],  

      // Maka perlu ditambahkan line sbg berikut pada result yang sudah menjadi JSON(jsonObject) =>
      // Karena List Response yang diinginkan API berada di "data":[]

//     List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

      // Buat List<ListUser> users = []; untuk menampung array List<dynamic> listUser dengan looping

//     List<ListUser> users = [];
//     for (int i = 0; i < listUser.length; i++)
//       users.add(ListUser.createListUser(listUser[i]));
    
//     return users;
//   }
// }

// on main.dart

// import 'package:flutter/material.dart';
// import 'package:my_first_flutter/list_of_user.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String output = "No Data";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("API Demo"),),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text(
//                 output,
//                 textAlign: TextAlign.center,
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   ListUser
//                     .getListUser("2")
//                     .then((value) {
//                       output = "";
//                       for (int i = 0; i < value.length; i++)
//                         output = output + "[ " + value[i].name + " ]";
//                       setState(() {});
//                     }
//                   );
//                 },
//                 child: Text("GET LIST DATA"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------

// SHARED PREFERENCES & DOUBLE QUESTION MARK OPERATOR

// Shared Preferences digunakan untuk menyimpan data simpel di Aplikasi.

// 1. Daftarin dulu di pubspec.yaml shared_preferences: ^0.5.12 dan
// import 'package:shared_preferences/shared_preferences.dart';

// on React Js
// localStorage.setItem('data', data);
// localStorage.removeItem('data');
// localStorage.getItem('data');

// on React Native (async)
// await AsyncStorage.setItem('data', data);
// await AsyncStorage.removeItem('data');
// await AsyncStorage.getItem('data');

// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   TextEditingController controller = TextEditingController(text: "No Name");
//   bool isON = false;

//   void saveData() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     pref.setString("nama", controller.text);
//     pref.setBool("ison", isON);
//   }

//   Future<String> getNama() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.getString("nama") ?? "No Name"; // ?? Berarti jika yang direturn kosong maka mereturn "No Name"
//   }

//   Future<bool> getON() async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.getBool("ison") ?? false; // ?? Berarti jika yang direturn kosong maka mereturn "No Name"
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Shared Preference Example"),),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               TextField(
//                 controller: controller,
//               ),
//               Switch(
//                 value: isON, 
//                 onChanged: (newValue) {
//                   setState(() {
//                     isON = newValue;
//                   });
//                 },
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   saveData();
//                 },
//                 child: Text("Save"),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   getNama().then((nama) {
//                     controller.text = nama;
//                     setState(() {});
//                   });
//                   getON().then((ison) {
//                     isON = ison;
//                     setState(() {});
//                   });
//                 },
//                 child: Text("Load"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------

// PROVIDER STATE MANAGEMENT

// Hampir sama seperti Redux di react

// StatefulWidget mempunyai kelemahan, jika menggunakan setState maka akan menggambar ulang keseluruhan
// dari tree yang barada di StatefulWidget tersebut dan mempengaruhi performance dari Aplikasi 

// Untuk mengubah beberapa Widget saja tanpa harus menggambar ulang semua Widget di StatefulWidget
// Maka digunakanlah Provider

// Cara Kerja

// Tambahkan pada pubspec.yaml " provider: ^4.3.2+2 " dan import 'package:flutter/foundation.dart'; 
// pada file ShareState yang akan berfungsi menyimpan state yang akan di pakai bareng2 pada State manapun
// pada StatefulWidget/StatelessWidget agar tidak perlu menggambar ulang keseluruhan Widget 
// dan tidak menyentuh widget yang tidak diperlu di gambar ulang

// 1. Membuat file baru (example : application_color.dart) dan class yang mengimplemen Change Notifier 
// (untuk memberi tahu kepada class tersebut apabila dari perubahan dari Consumer)

// 2. Buat Object setter getter pada class tersebut sesuai keperluan

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// on application_color.dart

// class ApplicationColor with ChangeNotifier{
//   bool _isLightBlue = true; // _ pada _isLightBlue berarti private

//   // Buat setter getter
//   bool get isLightBlue => _isLightBlue; // getter

//   set isLightBlue(bool value){
//     _isLightBlue = value;
//     notifyListeners(); // function untuk memberi perintah ke Widget2/Consumer untuk menunggu 
//     //update dari Application_color ini
//   }

//   // Kemudian membuat getter untuk mengembalikan Color sesuai hasil boolean _isLightBlue
//   Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
// }

// 3. Bungkus Scaffold dengan ChangeNotifierProvider yang akan menyediakan Object dari Share State

// 4. Bungkus Widget2 yang perlu diubah state dengan Consumer untuk memberi tau Wodget tersebut apabila
// ada perubahan dari state yang bersangkutan

// import 'package:flutter/material.dart';
// import 'package:my_first_flutter/application_color.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ChangeNotifierProvider( // inisialisasi Provider dengan ChangeNotifierProvider
//         create: (context) => ApplicationColor(), // create provider ApplicationColor() di lib/application_color.dart
//         child: Scaffold(
//           appBar: AppBar(
//             title: Consumer<ApplicationColor>( // Wrap pada Consumer dan provider ApplicationColor() di lib/application_color.dart
//               builder: (context, applicationColor,_) =>
//               Text(
//                 "Procider State Management",
//                 style: TextStyle(color : applicationColor.color), // masukan method getter color yang mengembalikan Color di ApplicationColor()
//               ),
//             ),
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Consumer<ApplicationColor>( // Wrap pada Consumer dan provider ApplicationColor() di lib/application_color.dart
//                   builder: (context, applicationColor,_) =>
//                   AnimatedContainer(
//                     duration: Duration(milliseconds: 500),
//                     height: 100,
//                     width: 100,
//                     margin: EdgeInsets.all(5),
//                     color: applicationColor.color, // masukan method getter color yang mengembalikan Color di ApplicationColor()
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Container(margin: EdgeInsets.all(5), child: Text("AB"),),
//                     Consumer<ApplicationColor>(
//                       builder: (context, applicationColor, _) =>
//                       Switch(
//                         value: applicationColor.isLightBlue, 
//                         onChanged: (newValue){
//                           applicationColor.isLightBlue = newValue;
//                         }
//                       ),
//                     ),
//                     Container(margin: EdgeInsets.all(5), child: Text("LB"),),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------

// PROVIDER STATE MANAGEMENT ( MULTI PROVIDER )

// on cart.dart

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class Cart with ChangeNotifier{
//   int _quantity = 0;

//   int get quantity => _quantity;

//   set quantity(int value){
//     _quantity = value;
//     notifyListeners();
//   }
// }

// on money.dart

// import 'package:flutter/cupertino.dart';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class Money with ChangeNotifier{
//   int _balance = 10000;

//   int get balance => _balance;

//   set balance(int value){
//     _balance = value;
//     notifyListeners();
//   }
// }

// on main.dart

// import 'package:flutter/material.dart';
// import 'package:my_first_flutter/cart.dart';
// import 'package:my_first_flutter/money.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MultiProvider(
//         providers: [
//           ChangeNotifierProvider(create: (context) => Money()),
//           ChangeNotifierProvider(create: (context) => Cart()),
//         ],
//         child: Scaffold(
//           floatingActionButton: Consumer<Money>(
//             builder:(context, money, _) => Consumer<Cart>(
//               builder:(context, cart, _) => FloatingActionButton( // FloatingActionButton biasanya di Scaffold
//                 onPressed: () {
//                   if (money.balance >= 500){
//                     cart.quantity += 1;
//                     money.balance -= 500;
//                   }
//                 },
//                 child: Icon(Icons.add_shopping_cart),
//                 backgroundColor: Colors.purple,
//               ),
//             ),
//           ),
//           appBar: AppBar(
//             backgroundColor: Colors.purple,
//             title: Text("Multi Provider"),
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment : MainAxisAlignment.center,
//                   children : <Widget>[
//                     Text("Balance"),
//                     Container(
//                       child: Align(
//                         alignment: Alignment.centerRight,
//                         child: Consumer<Money>(
//                           builder: (context, money, _) => (
//                             Text(
//                               money.balance.toString(),
//                               style: TextStyle(
//                                 color : Colors.purple,
//                                 fontWeight : FontWeight.w700
//                               ),
//                             )
//                           ),
//                         ),
//                       ),
//                       height: 30,
//                       width: 150,
//                       margin : EdgeInsets.all(5),
//                       padding: EdgeInsets.all(5),
//                       decoration: BoxDecoration( // untuk mendekorasi Container
//                         color: Colors.purple[100],
//                         borderRadius: BorderRadius.circular(5),
//                         border: Border.all( // mengurusi border pada Container
//                           color: Colors.purple,
//                           width: 2
//                         ),
//                       ), 
//                     ),
//                   ],
//                 ),
//                 Container(
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: Consumer<Cart>(
//                       builder: (context, cart, _) => Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "Apple (500) x " + cart.quantity.toString(),
//                             style: TextStyle(
//                               color : Colors.black,
//                               fontWeight : FontWeight.w500
//                             ),
//                           ),
//                           Text(
//                            (500 * cart.quantity).toString(),
//                             style: TextStyle(
//                               color : Colors.black,
//                               fontWeight : FontWeight.w500
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   height: 30,
//                   margin : EdgeInsets.all(5),
//                   padding: EdgeInsets.all(5),
//                   decoration: BoxDecoration( // untuk mendekorasi Container
//                     borderRadius: BorderRadius.circular(5),
//                     border: Border.all( // mengurusi border pada Container
//                       color: Colors.black,
//                       width: 2
//                     ),
//                   ), 
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// --------------------------------------------------

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

// on color_bloc.dart

// import 'dart:async';
// import 'package:flutter/material.dart';

// enum ColorEvent {to_amber, to_light_blue}  // enum untuk membuat event

// class ColorBloc{
//   Color _color = Colors.amber; // State Initial
  
//   // untuk Event

//   // EVENT STREAM CONTROLLER berada di dalam class jadi harus PRIVATE (didepan var dikasih _), di Inisialisasi terlebih dahulu
//   StreamController<ColorEvent> _eventController = StreamController<ColorEvent>(); // Buat StreamController untuk Event dan 

//   // Application UI akan men-trigger Event dan masuk ke SINK EVENT STREAM CONTROLLER, jadi SINK EVENT STREAM CONTROLLER 
//   // harus terekspose keluar/getter oleh Application UI, jadi SINK harus PUBLIC dan Melanjutkan EVENT STREAM CONTROLLER
//   StreamSink<ColorEvent> get eventSink => _eventController.sink;
  

//   // untuk State
//   // STATE STREAM CONTROLLER berada di dalam class jadi harus PRIVATE (didepan var dikasih _), di Inisialisasi terlebih dahulu
//   StreamController<Color> _stateController = StreamController<Color>(); // Buat StreamController untuk State

//   // Setelah keluar dari mapEventToState menghasilkan NEW STATE dan men-trigger ke SINK STATE STREAM CONTROLLER untuk 
//   // dilanjutkan ke STATE STREAM CONTROLLER, SINK STATE STREAM CONTROLLER harus bisa diakses/getter oleh mapEventToState
//   // dan private karena berada didalam class
//   StreamSink<Color> get _stateSink => _stateController.sink;

//   // Output => New State untuk ke Application, jadi harus PUBLIC/bisa diakses Application UI
//   Stream<Color> get stateStream => _stateController.stream;

//   // Buat _mapEventToState yang telah menerima ColorEvent dari EVENT STREAM CONTROLLER
//   void _mapEventToState(ColorEvent colorEvent){
//     if(colorEvent == ColorEvent.to_amber){
//       _color = Colors.amber;
//     } else {
//       _color = Colors.lightBlue;
//     }

//     // trigger ke SINK STATE STREAM CONTROLLER
//     _stateSink.add(_color); // langsung mengalir ke STATE STREAM CONTROLLER dan lanjut ke STATE STEAM untuk diakses oleh Application UI
//   }

//   // untuk menghubungkan STATE STREAM CONTROLLER ke _mapEventToState
//   ColorBloc(){
//     _eventController.stream.listen(_mapEventToState);
//   }

//   // Untuk membersihkan aliran/stream agar tidak memberatkan memori
//   void dispose(){
//     _eventController.close();
//     _stateController.close();
//   }
// }

// on main.dart

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   ColorBloc bloc = ColorBloc(); // Inisialisasi ColorBloc di color_bloc.dart

//   @override
//   void dispose() {
//     bloc.dispose(); // Implementasi dispose method untuk membersihkan saluran
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home:Scaffold(
//         floatingActionButton: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: <Widget>[
//             FloatingActionButton(
//               onPressed: (){
//                 // cara men-trigger Event dan masuk ke SINK EVENT STREAM CONTROLLER
//                 bloc.eventSink.add(ColorEvent.to_amber);
//               },
//               backgroundColor: Colors.amber,
//             ),
//             SizedBox(width: 10),
//             FloatingActionButton(
//               onPressed: (){
//                 // cara men-trigger Event dan masuk ke SINK EVENT STREAM CONTROLLER
//                 bloc.eventSink.add(ColorEvent.to_light_blue);
//               },
//               backgroundColor: Colors.lightBlue,
//             ),
//           ]
//         ),
//         appBar: AppBar(
//           title: Text("BLoC tanpa Library"),
//         ),
//         body: Center(
//           // cara men-get New State dari STATE STREAM yang sudah mendapat aliran/stream dari STATE STREAM CONTROLLER
//           child: StreamBuilder(
//             stream: bloc.stateStream, 
//             initialData: Colors.amber, 
//             builder: (context, snapshot) {
//               return AnimatedContainer(
//                 duration: Duration(milliseconds: 500),
//                 width: 100,
//                 height: 100,
//                 color: snapshot.data, // get new state
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }


// --------------------------------------------------

// BLoC ( BUSSINESS LOGIC COMPONENT ) (flutter_bloc Package)

// add flutter_bloc: ^6.0.6 di pubspec.yaml

// on color_bloc_lib.dart

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// enum ColorEvent {to_amber, to_light_blue}  // enum untuk membuat event

// class ColorBlocLib extends Bloc<ColorEvent, Color>{
//   Color _color = Colors.amber;

//   ColorBlocLib(Color initialState) : super(initialState);

//   @override
//   Stream<Color> mapEventToState(ColorEvent event) async* {
//     _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
//     yield _color; // yeild adalah perintah untuk memasukan data ke stream
//   }
// }

// on main.dart

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_first_flutter/color_bloc_lib.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider<ColorBlocLib>( // Bertanggung jawab menyediakan dispose
//         create:(context) => ColorBlocLib(Colors.amber),
//         child: NewPage(),
//       ),
//     );
//   }
// }

// class NewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     ColorBlocLib bloc = BlocProvider.of<ColorBlocLib>(context);
//     return Scaffold(
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           FloatingActionButton(
//             onPressed: (){
//               bloc.add(ColorEvent.to_amber);
//             },
//             backgroundColor: Colors.amber,
//           ),
//           SizedBox(width: 10),
//           FloatingActionButton(
//             onPressed: (){
//               bloc.add(ColorEvent.to_light_blue);
//             },
//             backgroundColor: Colors.lightBlue,
//           ),
//         ]
//       ),
//       appBar: AppBar(
//         title: Text("BLoC dengan Library"),
//       ),
//       body: Center(
//         child: BlocBuilder<ColorBlocLib, Color>(
//           builder: (BuildContext context, currentColor) => AnimatedContainer(
//             duration: Duration(milliseconds: 500),
//             width: 100,
//             height: 100,
//             color: currentColor,
//           ),
//         ),
//       ),
//     );
//   }
// }

// MVVM ARCHITECTURE

// Penjelasan bisa dilihat di E:\BelajarFlutter\MVVM

// Buat Folder UI, Model dan Bloc (Service juga boleh)