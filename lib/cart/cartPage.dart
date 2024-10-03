import 'package:flutter/material.dart';
import 'package:model/ListView/ListViewModel.dart';
import 'package:model/cart/cartBuilder.dart';

class CartPage extends StatefulWidget {
  ListViewModel obCart;
int counter;
List<ListViewModel>cartList;

  CartPage({super.key,required this.obCart,required this.counter,required this.cartList});
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.65,
                width: MediaQuery.of(context).size.width*0.9,
                child: Container(
                  child: ListView.separated(
                    shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CartBuilder(obCartBuilder: widget.cartList[index], counter: widget.counter,   );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: widget.cartList.length),
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.all(10),
                width: 450,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("price :",style: TextStyle(
                        fontSize: 35
                    ),
                    ),
                    Text("Shipping :",style: TextStyle(
                        fontSize: 35
                    ),
                    ),

                    Text("Taxes :",style: TextStyle(
                        fontSize: 35
                    ),
                    ),
                    Text("Total :",style: TextStyle(
                        fontSize: 35
                    ),
                    ),
                  ],
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
