import 'dart:async';
import 'package:flutter/material.dart';

enum ColorEvent {to_amber, to_light_blue}  // enum untuk membuat event

class ColorBloc{
  Color _color = Colors.amber; // State Initial
  
  // untuk Event

  // EVENT STREAM CONTROLLER berada di dalam class jadi harus PRIVATE (didepan var dikasih _), di Inisialisasi terlebih dahulu
  StreamController<ColorEvent> _eventController = StreamController<ColorEvent>(); // Buat StreamController untuk Event dan 

  // Application UI akan men-trigger Event dan masuk ke SINK EVENT STREAM CONTROLLER, jadi SINK EVENT STREAM CONTROLLER 
  // harus terekspose keluar/getter oleh Application UI, jadi SINK harus PUBLIC dan Melanjutkan EVENT STREAM CONTROLLER
  StreamSink<ColorEvent> get eventSink => _eventController.sink;
  

  // untuk State
  // STATE STREAM CONTROLLER berada di dalam class jadi harus PRIVATE (didepan var dikasih _), di Inisialisasi terlebih dahulu
  StreamController<Color> _stateController = StreamController<Color>(); // Buat StreamController untuk State

  // Setelah keluar dari mapEventToState menghasilkan NEW STATE dan men-trigger ke SINK STATE STREAM CONTROLLER untuk 
  // dilanjutkan ke STATE STREAM CONTROLLER, SINK STATE STREAM CONTROLLER harus bisa diakses/getter oleh mapEventToState
  // dan private karena berada didalam class
  StreamSink<Color> get _stateSink => _stateController.sink;

  // Output => New State untuk ke Application, jadi harus PUBLIC/bisa diakses Application UI
  Stream<Color> get stateStream => _stateController.stream;

  // Buat _mapEventToState yang telah menerima ColorEvent dari EVENT STREAM CONTROLLER
  void _mapEventToState(ColorEvent colorEvent){
    if(colorEvent == ColorEvent.to_amber){
      _color = Colors.amber;
    } else {
      _color = Colors.lightBlue;
    }

    // trigger ke SINK STATE STREAM CONTROLLER
    _stateSink.add(_color); // langsung mengalir ke STATE STREAM CONTROLLER dan lanjut ke STATE STEAM untuk diakses oleh Application UI
  }

  // untuk menghubungkan STATE STREAM CONTROLLER ke _mapEventToState
  ColorBloc(){
    _eventController.stream.listen(_mapEventToState);
  }

  // Untuk membersihkan aliran/stream agar tidak memberatkan memori
  void dispose(){
    _eventController.close();
    _stateController.close();
  }
}

