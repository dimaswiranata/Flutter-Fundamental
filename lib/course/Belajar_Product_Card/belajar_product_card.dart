import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Product_Card/product_card.dart';
import 'package:provider/provider.dart';

// REUSABLE COMPONENT

class BelajarProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        appBar: AppBar(
          backgroundColor: firstColor,
        ),
        body: ChangeNotifierProvider(
          create: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (context, product, _ ) => ProductCard(
                  imageURL: "https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg",
                  name: "Buah-buahan Mix 1 kg",
                  price: "Rp. 25.000",
                  notification: (product.quantity > 5) ? "Diskon 10%" : null,
                  quantity: product.quantity,
                  onAddCartTap: (){},
                  onDecTap: (){
                    ( product.quantity > 0 ) ? product.quantity-- : product.quantity;
                  },
                  onIncTap: (){
                    product.quantity++;
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductState with ChangeNotifier{
  int _quantity = 0; // inisial

  int get quantity => _quantity; // getter

  set quantity(int newValue){ // setter
    _quantity = newValue;
    notifyListeners();
  }
}