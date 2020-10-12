import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class User{
  String id;
  String name;

  User({
    this.id,
    this.name
  });

  factory User.getUser(Map<String, dynamic> object){
    return User(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name'],
    );
  }

  static Future<User> connectToAPI(String id) async{
    String apiUrl = "https://reqres.in/api/users/" + id;

    var apiResult = await http.get(apiUrl);

    var jsonObject = convert.jsonDecode(apiResult.body);

    // Karena Response dari API seperti
    // data : {
    //   "id" : "7",
    //   "email": "janet.weaver@reqres.in",
    //   "first_name": "Janet",
    //   "last_name": "Weaver",
    //   "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/josephstein/128.jpg"
    // }

    // Maka perlu ditambahkan line sbg berikut pada result yang sudah menjadi JSON(jsonObject) =>

    var userData = (jsonObject as Map<String, dynamic>)['data']; 

    return User.getUser(userData);
  }
}