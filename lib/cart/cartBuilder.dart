import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model/ListView/ListViewModel.dart';

class CartBuilder extends StatefulWidget {
  ListViewModel obCartBuilder;
  int counter;
  CartBuilder({super.key,required this.obCartBuilder,required this.counter,});

  @override
  State<CartBuilder> createState() => _CartBuilderState();
}

class _CartBuilderState extends State<CartBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListTile(

      title: Text("${widget.obCartBuilder.name}",style: TextStyle(fontSize: 35),),
      leading: Image.asset("${widget.obCartBuilder.pic}",fit: BoxFit.cover,),
      subtitle:Text("Total is ${widget.obCartBuilder.price!*widget.counter}",style: TextStyle(fontSize: 35)) ,
      trailing:Text("${widget.counter}",style: TextStyle(fontSize: 35)) ,

    );
  }
}
