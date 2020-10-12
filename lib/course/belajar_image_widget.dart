import 'package:flutter/material.dart';

// Image widget bisa dari network dan folder assets dan container sebagai parent
// dan fit : BoxFit dan repeat sebagai styling

class BelajarImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title : Text("MyApp"),),
        body:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                  padding: EdgeInsets.all(3),
                  child: Image(
                    image: AssetImage( // jangan lupa di daftarin dulu di pubspec.yaml
                      "assets/logo.png",
                    ),
                    fit: BoxFit.contain, // bisa none, contain, cover, fill, fitHeight, fitWidth, scaleDown
                    repeat: ImageRepeat.repeat,
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                  padding: EdgeInsets.all(3),
                  child: Image(
                    image: NetworkImage(
                      "https://i.pinimg.com/originals/a7/d0/ca/a7d0ca519cb30362701f86d645b20391.jpg",
                    ),
                    fit: BoxFit.contain, // bisa none, contain, cover, fill, fitHeight, fitWidth, scaleDown
                    repeat: ImageRepeat.repeat,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
