import 'package:flutter/material.dart';

// TEXT FIELD WIDGET AND TEXT FIELD DECORATION

// 1. Penggunaan TextField dengan mendefinisikan "controller" "TextEditingController"
// sebagai controller untuk TextField kemudian menampilkan dengan "controller.text"

// 2. Penggunaan atribut dari TextField seperti obscureText untuk Password dan MaxLength untuk max dari karakter

class BelajarTextField extends StatefulWidget {
  @override
  _BelajarTextFieldState createState() => _BelajarTextFieldState();
}

// class _BelajarTextFieldState extends State<BelajarTextField> {
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

class _BelajarTextFieldState extends State<BelajarTextField> {
  TextEditingController controller = TextEditingController(); // seperti variable  untuk mengambil isi dari TextField, untuk menampilkannya dgn "controller.text"

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(title: Text("My App")),
        body : Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: 
                  InputDecoration(
                    fillColor: Colors.lightGreen[100],
                    filled: true,
                    
                    icon: Icon(Icons.adb), // untuk diluar TextField
                    
                    prefix: Container(width: 10, height: 10), // untuk pemasanan Widget pada TextField, tidak bisa jika ada 
                    // prefixText, untuk Container bisa untuk padding dan margin
                    
                    // atribut prefix
                    prefixIcon: Icon(Icons.person, color : Colors.green), // icon "pre" didalam TextField
                    // prefixText: "Name", // Text "pre" didalam TextField
                    // prefixStyle: TextStyle(color : Colors.green), // Style untuk prefixText

                    // atribut suffix => sama seperti prefix tapi di belakang
                    // ada suffix(untuk Widget), suffixIcon, suffixStyle, suffixText

                    labelText: "Nama Lengkap", // Text Diatas TextField
                    labelStyle: TextStyle(color : Colors.green), // Style untuk labelText
                    hintText: "Nama Lengkap", // semacam placeholder
                    hintStyle: TextStyle(color : Colors.green), // style untuk placeholder/hint
                    // border: InputBorder.none, // TextField dengan tidak ada border
                    enabledBorder: 
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: new BorderSide(color: Colors.green, width: 2)
                      ),
                    focusedBorder: 
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: new BorderSide(color: Colors.green, width: 2)
                      ),
                  ),
                // obscureText: true, // untuk password
                // maxLength: 5,
                style: TextStyle(color: Colors.green),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller, // inisiasi controller
              ),
              Text(controller.text) // menampilkan isi TextField
            ],
          ),
        )
      ),
    );
  }
}