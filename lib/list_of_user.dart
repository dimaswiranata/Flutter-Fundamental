import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ListUser{
  String id;
  String name;

  ListUser({
    this.id,
    this.name
  });

  factory ListUser.createListUser(Map<String, dynamic> object){
    return ListUser(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name'],
    );
  }

  static Future<List<ListUser>> getListUser(String page) async{
    String apiUrl = "https://reqres.in/api/users?page=" + page;

    var apiResult = await http.get(apiUrl);

    var jsonObject = convert.jsonDecode(apiResult.body);

       // Karena Response dari API seperti
       // "data": [
       //   {
       //     "id": 7,
       //     "email": "michael.lawson@reqres.in",
       //     "first_name": "Michael",
       //     "last_name": "Lawson",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/follettkyle/128.jpg"
       //   },
       //   {
       //     "id": 8,
       //     "email": "lindsay.ferguson@reqres.in",
       //     "first_name": "Lindsay",
       //     "last_name": "Ferguson",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/araa3185/128.jpg"
       //   },
       //   {
       //     "id": 9,
       //     "email": "tobias.funke@reqres.in",
       //     "first_name": "Tobias",
       //     "last_name": "Funke",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/vivekprvr/128.jpg"
       //   },
       //   {
       //     "id": 10,
       //     "email": "byron.fields@reqres.in",
       //     "first_name": "Byron",
       //     "last_name": "Fields",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/russoedu/128.jpg"
       //   },
       //   {
       //     "id": 11,
       //     "email": "george.edwards@reqres.in",
       //     "first_name": "George",
       //     "last_name": "Edwards",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/mrmoiree/128.jpg"
       //   },
       //   {
       //     "id": 12,
       //     "email": "rachel.howell@reqres.in",
       //     "first_name": "Rachel",
       //     "last_name": "Howell",
       //     "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/hebertialmeida/128.jpg"
       //   }
       // ], 

       // Maka perlu ditambahkan line sbg berikut pada result yang sudah menjadi JSON(jsonObject) =>
       // Karena List Response yang diinginkan API berada di "data":[]

    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];

    // Buat List<ListUser> users = []; untuk menampung array List<dynamic> listUser dengan looping

    List<ListUser> users = [];
    for (int i = 0; i < listUser.length; i++)
      users.add(ListUser.createListUser(listUser[i]));
    
    return users;
  }
}