import 'package:flutter/material.dart';

import '../constant.dart';
import '../mywidget/product_body.dart';
class productscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return productscreenState();
  }
}
  class productscreenState extends State<productscreen>{
    
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
             body:Body()
          //    GridView(
          //     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
          //   //   padding: EdgeInsets.all(10),
          //   // crossAxisCount: 2,
          //   childAspectRatio: 7/8,
          //    mainAxisSpacing: 10,
          //    crossAxisSpacing: 10,
          //   //  shrinkWrap: true,
          //   //  primary: false,
          //     ),
          //    children: [
          //      productcard(image: 'images/im.jpj.jpg', title: 'لابتوبات', price: '20'),
          //      productcard(image: 'images/im.jpj.jpg', title: 'لابتوبات', price: '200'),
          //     //   productcard(image: 'images/im.jpj.jpg', title: 'لابتوبات', price: '20'),
          //     //  productcard(image: 'images/im.jpj.jpg', title: 'لابتوبات', price: '200'),
          //     //   productcard(image: 'images/im.jpj.jpg', title: 'لابتوبات', price: '20'),
          //     //  productcard(image: 'images/im.jpj.jpg', title: 'لابتوبات', price: '200'),
              
          //     ],),
          // //  Padding(
          // //     padding: const EdgeInsets.all(8.0),
          // //     child: Row(
          // //       children: [
          
          // //       ],
          // //     ),
          // //   ),
            );
            }));}}