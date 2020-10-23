import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Scoped_Model/scoped_model/user_model.dart';
import 'package:my_first_flutter/course/Belajar_Scoped_Model/users.dart';
import 'package:scoped_model/scoped_model.dart';

class BelajarScopedModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = UserModel();
    return ScopedModel<UserModel>(
      model: model,
      child: UsersPage(model),
    );
  }
}