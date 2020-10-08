import 'package:flutter/material.dart';
import 'package:my_first_flutter/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title : Text("Main Page"),),
        body: Center(
          child: RaisedButton(
            child: Text("Go to second page"), 
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: 
                    (context) { 
                      return SecondPage();
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