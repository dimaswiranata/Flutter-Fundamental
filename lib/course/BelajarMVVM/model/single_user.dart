import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class SingleUser{
  String id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  SingleUser({
    this.id, 
    this.email, 
    this.firstName, 
    this.lastName, 
    this.avatar, 
  });

  factory SingleUser.createSingleUser(Map<String, dynamic> object){
    return SingleUser(
      id: object["id"].toString(),
      email: object["email"],
      firstName: object["first_name"],
      lastName: object["last_name"],
      avatar: object["avatar"],
    );
  }

  static Future<SingleUser> getSingleUserFromAPI(int id) async {
    String apiUrl = "https://reqres.in/api/users/" + id.toString();

    var apiResult = await http.get(apiUrl);

    var jsonObject = convert.jsonDecode(apiResult.body);
    var userSingleData = (jsonObject as Map<String, dynamic>)['data']; 

    return SingleUser.createSingleUser(userSingleData);
  }
}

class UninitializedSingleUser extends SingleUser {}