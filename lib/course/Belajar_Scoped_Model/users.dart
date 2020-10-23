import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Scoped_Model/scoped_model/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

class UsersPage extends StatefulWidget {
  final UserModel model;

  UsersPage(this.model);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  void initState() {
    super.initState();
    widget.model.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Github Users'),
      ),
      body: ScopedModelDescendant<UserModel>(
        builder: (BuildContext context, Widget child, UserModel model) {
          Widget content = Container();
          if(model.isLoading){
            content= Center(
              child: Text('Sedang memuat data...'),
            );
          } else if (!model.isLoading && model.users.length > 0){
            content= ListView(
              children: [
                Column(
                  children: model.users.map((e) => Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                      leading: Image.network(e.avatarUrl),
                      title: Text(e.id.toString()),
                      subtitle: Text(e.login),
                    ),
                  )).toList(),
                ),
              ],
            );
          } else {
            content=Center(
              child: Text(model.messageError)
            );
          }
          return content;
        },
      ),
    );
  }
}