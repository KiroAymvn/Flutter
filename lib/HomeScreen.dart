import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:model/ItemDetails.dart';
import 'package:model/ListView/ListViewBuilder.dart';
import 'package:model/ListView/ListViewModel.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key,});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
ListViewModel?obHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Model Check"),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
                // height: MediaQuery.of(context).size.height*0.5,
                // width: MediaQuery.of(context).size.width*0.25,
                child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.25,
            width: MediaQuery.of(context).size.width*0.45,

            child: Swiper(
              onTap: (index){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails(obItemDetails: ListViewList[index],),));
              },
              autoplay: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context,int index){
                return Image.asset("${ListViewList[index].pic}",fit: BoxFit.fill,);
              },
              itemCount: ListViewList.length,
              index: 3,

              pagination: const SwiperPagination(),
              duration: 1,
              loop: true,
              outer: false,
              fade: 3,

            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
            itemBuilder:(context,index){
              return ListViewBuilder(obBuilder: ListViewList[index]);
            } ,
            separatorBuilder: (context, index) => SizedBox(height: 30,),
            itemCount: ListViewList.length),
            ),
          )
        ],

                ),
              ),
          ),
        ),
      ),
    );
  }
}
