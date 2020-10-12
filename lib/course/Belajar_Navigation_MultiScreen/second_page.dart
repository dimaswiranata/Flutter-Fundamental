import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title : Text("Second Page"),),
        body: Center(
          child: RaisedButton(
            child: Text("Back to main page"), 
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}