// CONTAINER WIDGET 

// sama spt DIV / VIEW di React

// 1. Penggunaan BorderRadius, decoration(BoxDecoration), gradient(LinearGradient(begin, end, colors))

import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title : Text("MyApp"),),
        body: Container(
          color: Colors.red,
          // margin: EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25), // for L T R B
          // padding: EdgeInsets.all(10),
          padding: EdgeInsets.only(bottom: 20, top: 20), // only on bottom/left/top/right
          child: Container(
            // color: Colors.blue,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration( // untuk mendekorasi Container Box
              // color: Colors.blue, // colors on container and on BoxDecoration are the same
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient( // color linear gradient, jgn gunakan color lagi dalam BoxDecoration
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.amber,
                  Colors.blue
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}