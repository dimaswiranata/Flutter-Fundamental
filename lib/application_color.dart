import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier{
  bool _isLightBlue = true; // _ pada _isLightBlue berarti private

  // Buat setter getter
  bool get isLightBlue => _isLightBlue; // getter

  set isLightBlue(bool value){
    _isLightBlue = value;
    notifyListeners(); // function untuk memberi perintah ke Widget2/Consumer untuk menunggu 
    //update dari Application_color ini
  }

  // Kemudian membuat getter untuk mengembalikan Color sesuai hasil boolean _isLightBlue
  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}