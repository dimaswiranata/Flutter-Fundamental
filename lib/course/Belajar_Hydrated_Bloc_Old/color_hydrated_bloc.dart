import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEventHydrated {to_amber, to_light_blue}  // enum untuk membuat event

class ColorHydratedBlocLib extends HydratedBloc<ColorEventHydrated, Color>{

  @override
  Color get initialState => super.initialState ?? Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEventHydrated event) async* {
    // yeild adalah perintah untuk memasukan data ke stream
    yield (event == ColorEventHydrated.to_amber) ? Colors.amber : Colors.lightBlue;
  }

  // method fromJson akan dipakai ketika aplikasi dijalankan,
  // ketika aplikasi dijalankan akan men-load data/state terakhir
  // yang berupa json
  @override
  Color fromJson(Map<String, dynamic> json) {
    try{
      return Color(json['color'] as int); // memanggil dari method toJson
      // state yang telah tersimpan dengan key 'color' dan ubah lagi dari
      // int ke Color
    }catch(_){
      return null;
    }
  }
  
  // Ketika melakukan perubahan terhadap state, akan disave lagi 
  // dalam bentuk Json, ketika save ke Json Map<String, int> bukan Color
  // karena Color tidak bisa diubah dalam bentuk Json jadi harus diubah ke 
  // integer
  @override
    Map<String, int> toJson(Color state) {
    try{
      return {'color' : state.value}; // state.value itu mengubah color menjadi interger
      // 'color' seperti key untuk memanggil kembali state yang disimpan
    } catch (_) {
      return null;
    }
  }
}