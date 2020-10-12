// OPACITY ( CUSTOM CARD DENGAN LATAR BELAKANG BERCORAK )

// 1. Menggunakan Stack untuk Background Gradient dan Custom Card

// 2. Custom Card menggunakan BoxSize dengan width dan height menggunakan Media Query untuk Flexiblity

// 3. Didalam BoxSize ada Stack untuk Background, Image dan Caption

// 4. Untuk Background Container menggunakan decoration(BoxDecoration) untuk Image Background untuk menyesuikan Card

// 5. Untuk Image Container menggunakan decoration(BoxDecoration) untuk borderRadius menyesuaikan Card dan 
// height menggunakan Media Query dengan menyesuaikan dengan Card

// 6. Penggunaan Spacer sebagai gap dari Row/Column

import 'package:flutter/material.dart';

class BelajarOpacityCustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title : Text(
            "Custom Card Example",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xFF8C062F), // 0xFF + code warna
        ),
        body: Stack(
          children: <Widget>[
            // Background
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                ),
              ),
            ),
            // Custom Card
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Card(
                  // shape: RoundedRectangleBorder(
                  //   side: BorderSide(color: Colors.black, width: 5),
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  elevation: 10,
                  child: Stack(
                    children: <Widget>[
                      // Background untuk Card
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4), // border untuk menyesuaikan card
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png",
                              ),
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                      // Image untuk Card
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                            topLeft: Radius.circular(4),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"
                            ),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      // Caption Untuk Card ( Dengan marginTop yang telah disesuaikan )
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          20, 
                          50 + MediaQuery.of(context).size.height * 0.35, 
                          20, 
                          20
                        ),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Beautiful Sunset at Paddy Field",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFF56D5D),
                                  fontSize: 25
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Posted on  ",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12
                                      ),
                                    ),
                                    Text(
                                      "Oct 9, 2019",
                                      style: TextStyle(
                                        color: Color(0xFFF56D5D),
                                        fontSize: 12
                                      ),
                                    ),
                                  ]
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Spacer(flex: 13,), // Spacer untuk gap antar child Row
                                  // Icon
                                  Icon(Icons.thumb_up, size:18, color: Colors.grey),
                                  Spacer(flex: 1,),
                                  // Text
                                  Text("99", style: TextStyle(color: Colors.grey),),
                                  Spacer(flex: 5,),
                                  // Icon
                                  Icon(Icons.comment, size:18, color: Colors.grey),
                                  Spacer(flex: 1,),
                                  //Text
                                  Text("888", style: TextStyle(color: Colors.grey),),
                                  Spacer(flex: 13,),
                                ],
                              ),
                            ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}