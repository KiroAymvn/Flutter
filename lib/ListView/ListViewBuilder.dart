import 'package:flutter/material.dart';
import 'package:model/ListView/ListViewModel.dart';

import '../ItemDetails.dart';

class ListViewBuilder extends StatelessWidget {
   ListViewBuilder({super.key,required this.obBuilder});
ListViewModel obBuilder;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails(obItemDetails: obBuilder,),));
      },
      child: Container(
        width: 150,
        height: 100,
        decoration: BoxDecoration(color: Colors.teal
            ,borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("${obBuilder?.pic}"),
            Align(
                alignment: AlignmentDirectional.center,
                child: Text("${obBuilder?.name}",style: TextStyle(fontSize: 35,color: Colors.white),)),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child:  Text("${obBuilder?.price} LE",style: TextStyle(fontSize: 30,color: Colors.white),),),

          ],
        ),


      )
      ,
    );
  }
}
