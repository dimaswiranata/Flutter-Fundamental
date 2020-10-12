import 'package:flutter/material.dart';
import 'package:my_first_flutter/course/Belajar_Multi_Provider/cart.dart';
import 'package:my_first_flutter/course/Belajar_Multi_Provider/money.dart';
import 'package:provider/provider.dart';

class BelajarMultiProvider extends StatefulWidget {
  @override
  _BelajarMultiProviderState createState() => _BelajarMultiProviderState();
}

class _BelajarMultiProviderState extends State<BelajarMultiProvider> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Money()),
          ChangeNotifierProvider(create: (context) => Cart()),
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder:(context, money, _) => Consumer<Cart>(
              builder:(context, cart, _) => FloatingActionButton( // FloatingActionButton biasanya di Scaffold
                onPressed: () {
                  if (money.balance >= 500){
                    cart.quantity += 1;
                    money.balance -= 500;
                  }
                },
                child: Icon(Icons.add_shopping_cart),
                backgroundColor: Colors.purple,
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text("Multi Provider"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children : <Widget>[
                    Text("Balance"),
                    Container(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Consumer<Money>(
                          builder: (context, money, _) => (
                            Text(
                              money.balance.toString(),
                              style: TextStyle(
                                color : Colors.purple,
                                fontWeight : FontWeight.w700
                              ),
                            )
                          ),
                        ),
                      ),
                      height: 30,
                      width: 150,
                      margin : EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration( // untuk mendekorasi Container
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all( // mengurusi border pada Container
                          color: Colors.purple,
                          width: 2
                        ),
                      ), 
                    ),
                  ],
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (context, cart, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Apple (500) x " + cart.quantity.toString(),
                            style: TextStyle(
                              color : Colors.black,
                              fontWeight : FontWeight.w500
                            ),
                          ),
                          Text(
                           (500 * cart.quantity).toString(),
                            style: TextStyle(
                              color : Colors.black,
                              fontWeight : FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  height: 30,
                  margin : EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration( // untuk mendekorasi Container
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all( // mengurusi border pada Container
                      color: Colors.black,
                      width: 2
                    ),
                  ), 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}