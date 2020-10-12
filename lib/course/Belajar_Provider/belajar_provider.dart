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

import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Provider/application_color.dart';
import 'package:provider/provider.dart';

class BelajarProvider extends StatefulWidget {
  @override
  _BelajarProviderState createState() => _BelajarProviderState();
}

class _BelajarProviderState extends State<BelajarProvider> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider( // inisialisasi Provider dengan ChangeNotifierProvider
        create: (context) => ApplicationColor(), // create provider ApplicationColor() di lib/application_color.dart
        child: Scaffold(
          appBar: AppBar(
            title: Consumer<ApplicationColor>( // Wrap pada Consumer dan provider ApplicationColor() di lib/application_color.dart
              builder: (context, applicationColor,_) =>
              Text(
                "Procider State Management",
                style: TextStyle(color : applicationColor.color), // masukan method getter color yang mengembalikan Color di ApplicationColor()
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<ApplicationColor>( // Wrap pada Consumer dan provider ApplicationColor() di lib/application_color.dart
                  builder: (context, applicationColor,_) =>
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(5),
                    color: applicationColor.color, // masukan method getter color yang mengembalikan Color di ApplicationColor()
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(margin: EdgeInsets.all(5), child: Text("AB"),),
                    Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) =>
                      Switch(
                        value: applicationColor.isLightBlue, 
                        onChanged: (newValue){
                          applicationColor.isLightBlue = newValue;
                        }
                      ),
                    ),
                    Container(margin: EdgeInsets.all(5), child: Text("LB"),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}