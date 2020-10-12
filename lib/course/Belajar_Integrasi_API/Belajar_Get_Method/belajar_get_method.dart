import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Integrasi_API/Belajar_Get_Method/user_model.dart';
import 'package:my_first_flutter/course/Belajar_Integrasi_API/Belajar_Post_Method/post_result_model.dart';

class BelajarGetMethod extends StatefulWidget {
  @override
  _BelajarGetMethodState createState() => _BelajarGetMethodState();
}

class _BelajarGetMethodState extends State<BelajarGetMethod> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("API Demo"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                (postResult  != null) ?
                (
                  postResult.id + 
                  " | " +
                  postResult.name +
                  " | " +
                  postResult.job +
                  " | " +
                  postResult.created
                ) : (
                  "Tidak Ada Data"
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                (user  != null) ?
                (
                  user.id + 
                  " | " +
                  user.name 
                ) : (
                  "Tidak Ada Data User"
                ),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () {
                  PostResult
                    .connectToAPI("Dimas Agusta Wiranata", "Front Emd Developer")
                    .then((value) 
                      {
                        setState(() {
                          postResult = value;
                        });
                      }
                    );
                },
                child: Text("POST/CREATE"),
              ),
              RaisedButton(
                onPressed: () {
                  User
                    .connectToAPI("2")
                    .then((value) 
                      {
                        setState(() {
                          user = value;
                        });
                      }
                    );
                },
                child: Text("GET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}