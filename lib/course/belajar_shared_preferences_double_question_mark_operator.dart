// Shared Preferences digunakan untuk menyimpan data simpel di Aplikasi.

// 1. Daftarin dulu di pubspec.yaml shared_preferences: ^0.5.12 dan
// import 'package:shared_preferences/shared_preferences.dart';

// on React Js
// localStorage.setItem('data', data);
// localStorage.removeItem('data');
// localStorage.getItem('data');

// on React Native (async)
// await AsyncStorage.setItem('data', data);
// await AsyncStorage.removeItem('data');
// await AsyncStorage.getItem('data');

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BelajarSharedPreferencesDoubleQuestionMarkOperator extends StatefulWidget {
  @override
  _BelajarSharedPreferencesDoubleQuestionMarkOperatorState createState() => _BelajarSharedPreferencesDoubleQuestionMarkOperatorState();
}

class _BelajarSharedPreferencesDoubleQuestionMarkOperatorState extends State<BelajarSharedPreferencesDoubleQuestionMarkOperator> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controller.text);
    pref.setBool("ison", isON);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No Name"; // ?? Berarti jika yang direturn kosong maka mereturn "No Name"
  }

  Future<bool> getON() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false; // ?? Berarti jika yang direturn kosong maka mereturn "No Name"
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Shared Preference Example"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                value: isON, 
                onChanged: (newValue) {
                  setState(() {
                    isON = newValue;
                  });
                },
              ),
              RaisedButton(
                onPressed: () {
                  saveData();
                },
                child: Text("Save"),
              ),
              RaisedButton(
                onPressed: () {
                  getNama().then((nama) {
                    controller.text = nama;
                    setState(() {});
                  });
                  getON().then((ison) {
                    isON = ison;
                    setState(() {});
                  });
                },
                child: Text("Load"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}