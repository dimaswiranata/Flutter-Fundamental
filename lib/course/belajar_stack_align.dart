import 'package:flutter/material.dart';

// STACK AND ALIGN WIDGET

// STACK <=> LAYER

// 1. Flexible Widget untuk flex

// 2. align untuk positioning component terhadap Parent (Container/Stack)

class BelajarStackAlign extends StatefulWidget {
  @override
  _BelajarStackAlignState createState() => _BelajarStackAlignState();
}

class _BelajarStackAlignState extends State<BelajarStackAlign> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title : Text("MyApp"),),
        body: Stack(
          children: <Widget>[
            // cara bikin background pake Stack
            Column( // Column dengan Flexible
              children : <Widget>[
                Flexible( // Flexible Widget untuk flex 1 untuk Row atas
                  flex: 1, 
                  child: Row( // Row atas
                    children: <Widget>[
                      Flexible(
                        flex: 1, 
                        child: Container(
                          color: Colors.white
                        )
                      ),
                      Flexible(
                        flex: 1, 
                        child: Container(
                          color: Colors.black12
                        )
                      ),
                    ],
                  )
                ),
                Flexible( // Flex Bawah untuk Row Bawah
                  flex: 1, 
                  child: Row( // Row bawah
                    children: <Widget>[
                      Flexible(
                        flex: 1, 
                        child: Container(
                          color: Colors.black12
                        )
                      ),
                      Flexible(
                        flex: 1, 
                        child: Container(
                          color: Colors.white
                        )
                      ),
                    ],
                  )
                ),
              ],
            ),
            // ListView & Main Content
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Ini adalah Text yang ada dilapisan tengah dari Stack",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Button di Tengah Bawah
            Align( // Untuk positioning
              // alignment: Alignment.bottomRight,
              alignment: Alignment(0.8, 0.9), // for custom
              // x untuk Horizontal, y untuk Vertical, 
              // nilai x paling kiri (-1), tengah (0), paling kanan(1)
              // nilai y paling bawah (-1), tengah (0), paling atas(1)
              child: RaisedButton(
                onPressed: () {}, 
                child: Text("My Button"),
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}