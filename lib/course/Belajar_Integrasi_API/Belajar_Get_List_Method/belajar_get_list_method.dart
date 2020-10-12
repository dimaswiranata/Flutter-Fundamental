import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Integrasi_API/Belajar_Get_List_Method/list_of_user.dart';

class BelajarGetListMethod extends StatefulWidget {
  @override
  _BelajarGetListMethodState createState() => _BelajarGetListMethodState();
}

class _BelajarGetListMethodState extends State<BelajarGetListMethod> {
  String output = "No Data";

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
                output,
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () {
                  ListUser
                    .getListUser("2")
                    .then((value) {
                      output = "";
                      for (int i = 0; i < value.length; i++)
                        output = output + "[ " + value[i].name + " ]";
                      setState(() {});
                    }
                  );
                },
                child: Text("GET LIST DATA"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}