import 'package:flutter/material.dart';

class BelajarClipPath extends StatefulWidget {
  @override
  _BelajarClipPathState createState() => _BelajarClipPathState();
}

class _BelajarClipPathState extends State<BelajarClipPath> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Custom Clipper"),),
        body: Center(
          child : ClipPath(
            clipper: MyClipper(), // class untuk membentuk clip Image
            child: Image(
              width: 300,
              image: NetworkImage(
                "https://i.pinimg.com/originals/96/37/49/963749a76357028fd70e54bccacffcba.jpg"
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path(); // Inisialisasi Path baru
    path.lineTo(0, size.height); // tujuan pertama
    // path.quadraticBezierTo(x1, y1, x2, y2); // x2 dan y2 adalah tujuan kedua 
    // x1 dan y1 adalah titik kontrol jadi untuk melengkung kebawah jadi x => size.width / 2 dan y => size.height * 0,75
    path.quadraticBezierTo(size.width / 2, size.height * 0.75, size.width, size.height);
    path.lineTo(size.width, 0); // tujuan ketiga
    path.close();
    return path;
  }

  // mulai dari garis kiri atas ke bawah adalah mulai dari 0,0 ke tujuan 0,300
  // kemudian tujuan ke dua yaitu garis bawah kiri ke kanan, dari 0,300 ke tujuan 300,300
  // kemudian tujuan ke tiga yaitu garis kanan dari bawah ke atas dari 300,300 ke tujuan 300,0
  // untuk penutup langsung path.close();

  // 0,0----300,0
  //  |       |
  //  |       |
  // 0,300---300,300
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}