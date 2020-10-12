import 'package:flutter/material.dart';

// 1. Card Widget hanya bisa diisi oleh satu Widget, apabila
// ingin lebih maka gunakan Row atau Column, elevation untuk menjarak Card dengan Background

// 2. Contoh dalam membuat component Card yang Reusable dengan parameter
// "IconData" untuk mengisi "Icon"
// "String" untuk mengisi "Text"

class BelajarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor : Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, 'Account Box'),
              buildCard(Icons.adb, 'Serangga Android'),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return( 
      Card( // Card cuma bisa diisi sama 1 widget, apabila ingin lebih dari 1 widget, gunakan row atau column
        elevation: 5, // Untuk menjadi jarak dari card ke background
        child: Row(
          children: <Widget>[
            Container(
              margin : EdgeInsets.all(5),
              child: Icon(iconData, color: Colors.green),
            ),
            Text(text)
          ],
        ),
      )
    );
  }
}