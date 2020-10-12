// ANIMATED CONTAINER & GESTURE DETECTOR

// 1. ANIMATED CONTAINER => memberikan animasi secara otomatis terhadap perubahan

// 2. GESTURE DETECTOR => sama seperti Touchable di React dengan onTap untuk onPress

import 'dart:math';

import 'package:flutter/material.dart';

class BelajarAnimatedContainerDanGestureDetector extends StatefulWidget {
  @override
  _BelajarAnimatedContainerDanGestureDetectorState createState() => _BelajarAnimatedContainerDanGestureDetectorState();
}

class _BelajarAnimatedContainerDanGestureDetectorState extends State<BelajarAnimatedContainerDanGestureDetector> {
  Random random = Random(); // Generate random integer
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: 
          GestureDetector( // GestureDetector sama seperti Touchable di React
            onTap: () { // sama seperti onPress
              setState(() {});
            },
            child: AnimatedContainer(
              color: 
                Color.fromARGB( // jadi ARGB => A untuk transparansi bernilai 0-255 dan RGB channel warna biasa
                  255, 
                  random.nextInt(256),
                  random.nextInt(256), 
                  random.nextInt(256)
                ), 
              duration: Duration(seconds: 1),
              width: 50.0 + random.nextInt(101), // jadi width bernilai Double dan nextInt(max) bernilai 0 sampai max, jadi 50.0 disetting untuk awalan apa mendapat nilai 0 jadi max = 150
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}