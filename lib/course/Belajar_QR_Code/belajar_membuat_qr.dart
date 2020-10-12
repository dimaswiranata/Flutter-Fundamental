// 1. Membuat QR Code dengan memasang "qr_flutter: ^3.1.0" terlebih dahulu di pubspec.yml

// 2. Terus meng import 'package:qr_flutter/qr_flutter.dart';

// 3. Kemudian gunakan di body Center QrImage untuk membuat QR Code dan perlu mendefinisikan version
// https://www.qrcode.com/en/about/version.html

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BelajarMembuatQRCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            version: 6,
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(30),
            size: 300, // untuk ukuran 300x300
            data: "https://www.youtube.com",
          ),
        ),
      ),
    );
  }
}