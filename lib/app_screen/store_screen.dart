 

import 'package:flutter/material.dart';

import '../constant.dart';
import '../mywidget/store_card.dart';
class storescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return storescreenState();
  }
}
  class storescreenState extends State<storescreen>{
    
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
     double screenHeight = MediaQuery.of(context).size.height;
      
      
     
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder:(BuildContext context,BoxConstraints constraints){
          return Scaffold(
            backgroundColor: Pcolor,
            body: ListView(
          children: [
            Center(
               child: Padding(
                 padding: const EdgeInsets.only(top: 70),
                 child: Text("زول اي تي مول",
                 style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                 ),),
               )
              ),
              Storecard("images/im.jpj.jpg", "StoreName"),
              Storecard("images/im.jpj.jpg", "StoreName"),
              Storecard("images/im.jpj.jpg", "StoreName")


          
                    
             
            ]),

          );}));}}
                // Padding(
                //   padding: const EdgeInsets.all(30.0),
                //   child: Container(
                //   height: MediaQuery.of(context).size.height / 18,
                //      decoration: BoxDecoration(
                //          borderRadius: BorderRadius.circular(10),
                //          gradient: LinearGradient(colors: [
                //            Pcolor,
                //            Buttonscolor2
                //          ])),
                //      child: Center(
                //        child: GestureDetector(
                //         onTap: () {
                //           Navigator.push( context, MaterialPageRoute(builder: (context){
                //                       return userinfo ();}));
                //         },
                //          child: Text(
                //            " تاكيد",
                //            style: TextStyle(
                //                color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                //          ),
                //        ),
                //      ),
                //    ),
                // ),



                // cartboxx(image: 'images/im.jpj.jpg', price: '30000', title: 'لابتوب',),
                  //  cartboxx(image: 'images/im.jpj.jpg', price: '30000', title: 'لابتوب',),