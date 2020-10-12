// HTTP REQUEST / KONEKSI KE API (POST METHOD)

// POST API dari https://reqres.in/

// Langkah-langkah 

// 1. Membuat class terlebih dahulu sebagai model, untuk response result 
// nanti akan di modelkan menjadi sebuah class

// 2. Membuat factory method, method untuk memapping dari JSON Object ke class
// yang telah dibuat

// 3. Method untuk memanggil API

import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Integrasi_API/Belajar_Post_Method/post_result_model.dart';

class BelajarPostMethod extends StatefulWidget {
  @override
  _BelajarPostMethodState createState() => _BelajarPostMethodState();
}

class _BelajarPostMethodState extends State<BelajarPostMethod> {
  PostResult postResult = null; //inisialisasi PostResult dengan diisi dengan "null"

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("API Demo"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                (postResult != null) ?
                (
                  postResult.id +  // untuk memanggil component yang sudah di modelkan pada PostResult
                  " | " +
                  postResult.name +
                  " | " +
                  postResult.job +
                  " | " +
                  postResult.created
                ) : (
                  "Tidak Ada Data"
                ),
                textAlign: TextAlign.center,
              ),
              RaisedButton(
                onPressed: () {
                  PostResult
                    .connectToAPI("Dimas Agusta Wiranata", "Front Emd Developer") // Untuk memanggil PostResult.connectToAPI dan diisi Parameter yang di Request API untuk menghasilkan Response API
                    .then((value) // me Return hasil dari PostResult.connectToAPI yang telah menjadi JSON
                      {
                        setState(() {
                          postResult = value; 
                          //Kemudian disimpan ke PostResult() postResult yang tadinya null dan 
                          // di update state dengan setState(() {})
                        });
                      }
                    );
                },
                child: Text("POST/CREATE"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}