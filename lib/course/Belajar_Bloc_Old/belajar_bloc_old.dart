import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_first_flutter/course/Belajar_Bloc_Old/color_bloc_lib.dart';

class BelajarBlocOld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorBlocLib>(
        builder: (context) => ColorBlocLib(),
        child: ColorBlocLibPage(),
      ),
    );
  }
}

class ColorBlocLibPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBlocLib bloc = BlocProvider.of<ColorBlocLib>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: (){
              bloc.dispatch(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: (){
              bloc.dispatch(ColorEvent.to_light_blue);
            },
            backgroundColor: Colors.lightBlue,
          ),
        ]
      ),
      appBar: AppBar(
        title: Text("BLoC dengan Library"),
      ),
      body: Center(
        child: BlocBuilder<ColorBlocLib, Color>(
          builder: (BuildContext context, currentColor) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 100,
            height: 100,
            color: currentColor,
          ),
        ),
      ),
    );
  }
}