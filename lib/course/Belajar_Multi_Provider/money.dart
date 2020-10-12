import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Money with ChangeNotifier{
  int _balance = 10000;

  int get balance => _balance;

  set balance(int value){
    _balance = value;
    notifyListeners();
  }
}