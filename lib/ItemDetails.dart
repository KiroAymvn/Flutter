import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model/ListView/ListViewModel.dart';
import 'package:model/cart/cartPage.dart';

class ItemDetails extends StatefulWidget {
   ItemDetails({super.key,required this.obItemDetails});
ListViewModel obItemDetails;
List<ListViewModel>cartList=[];
int counter=0;
  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("${widget.obItemDetails?.pic}"),
              Text("${widget.obItemDetails?.name}",style: TextStyle(fontSize: 50,color: Colors.red),)
              ,Text("${widget.obItemDetails?.price} LE",style: TextStyle(fontSize: 40,color: Colors.red),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      widget.counter++;
                    });
                  }, icon: Icon(Icons.add),style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),),
                  Text("${widget.counter}",style: TextStyle(fontSize: 35),),
                  Column(
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          widget.counter--;
                          if(widget.counter<=0)
                            {
                              widget.counter=0;
                            }
                          if(widget.counter>0)
                            {
                              widget.cartList.add(widget.obItemDetails);
                            }
                        });
                      }, icon: Icon(CupertinoIcons.minus),style: ButtonStyle(iconSize: WidgetStatePropertyAll(35)),),
                      SizedBox(
                        height: 30,
                      ),
                      CircleAvatar(
                        child: IconButton(onPressed: (){
                          setState(() {
                            widget.counter=0;
                          });
                        }, icon: Icon(CupertinoIcons.refresh_bold),),
                      )
                    ],
                  ),
                ],
              ),
              Text("Total is ${widget.obItemDetails!.price!*widget.counter}",style: TextStyle(fontSize: 50,color: Colors.red),),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage( counter: widget.counter, cartList: widget.cartList, obCart: widget.obItemDetails ,),));
              } , child: Text("add to cart"),)
            ],
          ),),
        ),
      ),
      
    );
  }
}
