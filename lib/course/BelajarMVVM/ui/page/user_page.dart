import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_flutter/course/BelajarMVVM/bloc/single_user_bloc.dart';
import 'package:my_first_flutter/course/BelajarMVVM/model/single_user.dart';
import 'package:my_first_flutter/course/BelajarMVVM/ui/widget/single_user_card.dart';
import 'dart:math';

class SingleUserPage extends StatelessWidget {
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    SingleUserBloc bloc = BlocProvider.of<SingleUserBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Demo MVVM'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: (){
              bloc.dispatch(random.nextInt(10) + 1); // biar 1 - 10
            },
            child: Text("Pick Random User"),
            color: Colors.blueGrey,
          ),
          BlocBuilder<SingleUserBloc, SingleUser>(
            builder: (context, currentSingleUser) =>
              (currentSingleUser is UninitializedSingleUser) ? 
                Container() 
                : 
                SingleUserCard(currentSingleUser)
          ),
        ],
      ),
    );
  }
}