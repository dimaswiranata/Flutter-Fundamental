import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_flutter/course/BelajarMVVM/bloc/single_user_bloc.dart';
import 'package:my_first_flutter/course/BelajarMVVM/ui/page/user_page.dart';

class BelajarMVVM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        builder: (context) => SingleUserBloc(),
        child: SingleUserPage(),
      ),
    );
  }
}