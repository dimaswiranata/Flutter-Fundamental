import 'package:flutter/material.dart';
import 'package:my_first_flutter/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            child: Text("Login"), 
            onPressed: () {
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(
                  builder: 
                    (context) { 
                      return MainPage();
                    }
                )
              );
            },
          ),
        ),
      ),
    );
  }
}