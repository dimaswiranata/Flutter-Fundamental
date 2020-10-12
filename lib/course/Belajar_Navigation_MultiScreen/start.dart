import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Navigation_MultiScreen/login_page.dart';

// NAVIGATION MULTI PAGE / SCREEN

// 1. Push Replacement => Misal "login page" ke "main page", diklik back tidak bisa kembali ke 
// "login page" dengan arti "login page" ditimpa/diganti dengan "main page".
// implementasi on lib/login_page.dart

// 2. Push => "main page" ditumpuk/dihalangi dengan "second page", tapi masih bisa kembali ke "main page"
// implementasi on lib/main_page.dart

// 3. Pop => untuk menghilangkan page yang sedang aktif dan kembali ke page yang dihalangi/ditimpa
// implementasi on lib/second_page.dart

class BelajarNavigationMultiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}