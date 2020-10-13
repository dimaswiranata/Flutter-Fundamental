import 'package:flutter/material.dart';

class BelajarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: SizedBox(
              width: 140,
              // button keranjang
              child: RaisedButton(
                onPressed: (){},
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.add_shopping_cart),
                    Text("Tombol"),
                  ],
                ),
                shape: RoundedRectangleBorder( // shape untuk Button
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}