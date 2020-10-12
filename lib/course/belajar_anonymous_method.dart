// ANONYMOUS METHOD

// => method yang tidak memiliki nama

// setState(() {}) untuk mengupdate seluruh state pada StatefulWidget/StatelessWidget

import 'package:flutter/material.dart';

class BelajarAnonymousMethod extends StatefulWidget {
  @override
  _BelajarAnonymousMethodState createState() => _BelajarAnonymousMethodState();
}

class _BelajarAnonymousMethodState extends State<BelajarAnonymousMethod> {
  String message = "Ini adalah Text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                child: Text("Tekan Saya"),
                onPressed: () {
                  setState(() {
                    message = "tombol sudah diTekan";
                  });
                },
              )
            ],
          ),
        )
      ),
    );
  }
}