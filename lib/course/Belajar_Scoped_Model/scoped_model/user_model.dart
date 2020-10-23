import 'dart:convert';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

import '../model/user.dart';

class UserModel extends Model {
  List<User> _users = [];
  bool _isLoading = false;
  String messageError = "Please Try Again";

  List<User> get users {
    return _users;
  }

  bool get isLoading {
    return _isLoading;
  }

  void fetchUsers({http.Client client}) async {
    //todo: Jika http.Client null maka membuat http.Client yang baru
    client ??= http.Client();

    //todo: set _isLoading true
    _isLoading = true;

    notifyListeners();

    String url = 'https://api.github.com/users'; //* Inisialisasi baseUrl => Url API User Github

    //todo: Initialisasi var 'response' untuk menampung respon dari API User Github
    var response = await client.get(url); //* Method 'GET' untuk API User Github

    //todo: cek jika response.statusCode selain 200 berarti gagal mendapatkan response yang sesuai
    if (response.statusCode != 200){
      print(messageError);
      _isLoading = false;
      notifyListeners();
    }

    //todo: Jika berhasil, mengubah response.body API User Github menjadi json dan menyimpan ke var data
    var data = jsonDecode(response.body);

    List<User> user = (data as Iterable)
      .map((e) => User.fromJson(e))
      .toList();

    _isLoading = false;
    
    _users = user;
    
    notifyListeners();
  }
}