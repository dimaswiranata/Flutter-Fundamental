// TAB BAR

// 1. Penggunaan Tab Bar dengan menginisialisasi DefaultTabController dan Panjangnya

// 2. Letakan TabBar pada Bottom pada AppBar dan Desain Tampilan dari setiap TabBar dengan Widget(icon, text, child(Image))

// 3. Page dari Tab diletakan di Body dengan TabBarView dengan children array Widget sebanyak panjang TabBar dan sesuai urutan

import 'package:flutter/material.dart';

class BelajarTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController( // Inisialisasi Tab Controller
        length: 4, // Length TabBae
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contoh Tab Bar"),
            bottom: TabBar( // Inisialisasi TabBar dibawah Text untuk AppBar
              tabs: <Widget>[ // TabBar bisa berisi Widget Seperti icon, text, Image
                Tab(
                  icon: Icon(Icons.comment),
                  text: "Comment"
                ),
                Tab(
                  child: Image(image: AssetImage("assets/cute.png")),
                ),
                Tab(
                  icon: Icon(Icons.computer),
                ),
                Tab(
                  text: "News"
                ),
              ],
            ),
          ),
          body: TabBarView( // Tampilan dari TabBar
            children: <Widget>[
              // Tampilan TabBar 1
              Center(
                child: Text("Tab 1")
              ),
              // Tampilan TabBar 2
              Center(
                child: Text("Tab 2")
              ),
              // Tampilan TabBar 3
              Center(
                child: Text("Tab 3")
              ),
              // Tampilan TabBar 4
              Center(
                child: Text("Tab 4")
              ),
            ],
          ),
        ),
      ),
    );
  }
}

