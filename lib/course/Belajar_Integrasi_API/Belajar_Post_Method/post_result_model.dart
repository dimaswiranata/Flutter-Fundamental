import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

// 1. Membuat class terlebih dahulu sebagai model, untuk response result dari API 
// nanti akan di modelkan menjadi sebuah class

class PostResult{
  String id;
  String name;
  String job;
  String created;

  PostResult({
    this.id, 
    this.name, 
    this.job, 
    this.created
  });

  // 2. Membuat factory method, method untuk memapping dari JSON Object dari RESPONSE RESULT 
  // ke class yang telah dibuat

  // dynamic karena bisa saja POST RESPONSE RESULT hasilnya selain String
  // createPostResult => sebenarnya bebas

  // isi object disesuaikan dengan RESPONSE RESULT dari API

  factory PostResult.createPostResult(Map<String, dynamic> object)
  {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }

  // 3. Method untuk memanggil API

  // connectToAPI => sebenarnya bebas
  // String name, String job => parameter yang dibutuhkan/Request dari API untuk membuat User baru dan 
  // mendapat RESPONSE RESULT dari API

  static Future<PostResult> connectToAPI(String name, String job) async{
    String apiUrl = "https://reqres.in/api/users";
    
    // body merupakan kumpulan parameter yang disesuaikan dengan JSON Request kemudian diinput 
    // dengan paramater yang sudah ditentukan

    // http POST merupakan method async dengan mengembalikan Future
    // RESPONSE RESULT dari API disimpan ke apiResult
    var apiResult = await http.post(apiUrl, body: {
      "name" : name,
      "job" : job
    });

    // apiResult belum berbentuk JSON, untuk mengubah ke JSON maka
    // perlu meng import 'dart:convert' as convert;
    // kemudian decode apiResult ke JSON

    var jsonObject = convert.jsonDecode(apiResult.body);

    // kemudian return gabungan dari 3 langkah
    // apiResult yang merupakan RESPONSE telah diubah menjadi JSON (jsonObject)
    // kemudian di mapping di factory Method => createPostResult
    // dan di Model Kan di class PostResult
    return PostResult.createPostResult(jsonObject); 
  }


}