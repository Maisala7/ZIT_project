 
 import 'dart:ui';

import 'package:flutter/material.dart';
import '../constant.dart';
import '../mywidget/catogries_card.dart';
import '../mywidget/clipper.dart';
import '../mywidget/product_body.dart';
class catogriesscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return catogriesscreenState();
  }
}
  class catogriesscreenState extends State<catogriesscreen>{
    
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
     double screenHeight = MediaQuery.of(context).size.height;
      
      
     
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder:(BuildContext context,BoxConstraints constraints){
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Pcolor,
              title: Center(child: Text("اسم المتجر",
              style: TextStyle(
                fontWeight: FontWeight.bold

              ),)),
            ),
            body: ListView(children: [
               Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top:20,right: 25,left: 50),
              child:  TextField(
                                
                                decoration: InputDecoration(
                                 enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                            ),
                                  borderRadius: BorderRadius.circular(20)),
                                  focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color:Pcolor
                                          ),
                                borderRadius: BorderRadius.circular(20)),
                                  prefixIcon:const Icon(Icons.search,
                                  color:Pcolor ),
                                 
               ), ),
            ),),
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
          category(image: 'images/im.jpj.jpg', title: 'لابتوبات'),
          category(image: 'images/im.jpj.jpg', title: 'لابتوبات')
                ],
              ),
            )
          

            ]),
          )
          ; }));}}

