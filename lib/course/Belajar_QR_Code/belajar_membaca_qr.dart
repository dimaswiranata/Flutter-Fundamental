// Membaca QR Code, QRScan untuk membaca QR Code dan Simple Permission untuk mengatur permission dalam membaca QRCode
// seperti camera dan fibration

// Pasang di pubspec.yaml
// qrscan: ^0.2.17
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

import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart';
import 'package:permission_handler/permission_handler.dart';

class BelajarMembacaQRCode extends StatefulWidget {
  @override
  _BelajarMembacaQRCodeState createState() => _BelajarMembacaQRCodeState();
}

class _BelajarMembacaQRCodeState extends State<BelajarMembacaQRCode> {
  String data = "QR Code Data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                data, 
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.w600
                ),
              ),
              RaisedButton(
                onPressed: () {
                  scanQR();
                },
                child: Text("Scan QR"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void scanQR() async {
    if (await Permission.camera.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
      String scanResult = await scan();
      setState(() {
        data = scanResult;
      });
    }
    if (await Permission.camera.isRestricted) {
      data = "akses tidak diberikan";
    }
  }
}
