import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/BelajarMVVM/model/single_user.dart';

class SingleUserCard extends StatelessWidget {
  final SingleUser singleUser;

  SingleUserCard(this.singleUser);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x55000000),
            offset: Offset(1, 1),
            blurRadius: 7,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: <Widget>[
          Container(
              width: 75,
              height: 75,
              margin: EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(singleUser.avatar),
                  ))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('ID : ' + singleUser.id),
              Text('Nama : ' + singleUser.firstName + " " + singleUser.lastName),
              Text('Email : ' + singleUser.email),
            ],
          ),
        ],
      ),
    );
  }
}