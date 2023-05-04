import 'package:flutter/material.dart';

import '../constant.dart';


class userinfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return userinfoState();
  }
}
  class userinfoState extends State<userinfo>{
    
  @override
  Widget build(BuildContext context) {
     final formKey = GlobalKey<FormState>();
      final addressController = TextEditingController();
      final usernameController = TextEditingController();
      final phone1Controller = TextEditingController();
      final phone2Controller = TextEditingController();


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
          body:Form(
     key: formKey,
     child: Column(
                 children: <Widget>[
                      Container(
                     padding: EdgeInsets.all(25.0),
                     child: TextFormField(
                       controller: usernameController,
                       decoration: InputDecoration(
                       prefixIcon:const Icon(Icons.person,
                       color: Pcolor),
                       hintText: "ادخل اسمك رباعيا" ,
                     ),
                   )),
                   Container(
                     padding: EdgeInsets.all(25.0),
                     child: TextFormField(
                       controller: addressController,
                       decoration: InputDecoration(
                       prefixIcon:const Icon(Icons.home,
                       color: Pcolor),
                       hintText: "العنوان" ,
                     ),
    ) ),
        Container(
                     padding: EdgeInsets.all(25.0),
                     child: TextFormField(
                       controller: phone1Controller,
                       decoration: InputDecoration(
                       prefixIcon:const Icon(Icons.phone_enabled_rounded,
                       color: Pcolor),
                       hintText: "رقم الهاتف" ,
                     ),
    ) ),
        Container(
                     padding: EdgeInsets.all(25.0),
                     child: TextFormField(
                       controller: phone2Controller,
                       decoration: InputDecoration(
                       prefixIcon:const Icon(Icons.phone_enabled_rounded,
                       color: Pcolor),
                       hintText: "رقم احتياطي" ,
                     ),
    ) ),
        
         Padding(
                 padding: const EdgeInsets.all(55.0),
                 child: Container(
                   height: MediaQuery.of(context).size.height / 15,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       gradient: LinearGradient(colors: [
                         Pcolor,
                         Buttonscolor2
                       ])),
                   child: Center(
                     child: Text(
                       " تاكيد",
                       style: TextStyle(
                           color: Colors.white, fontWeight: FontWeight.bold),
                     ),
                   ),
                 ),
               ),
    ])
   ) ,
            );}
            ));
            }}