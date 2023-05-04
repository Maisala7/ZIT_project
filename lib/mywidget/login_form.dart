

import 'package:flutter/material.dart';
import '../app_screen/store_screen.dart';
import '../constant.dart';
import 'default_Button.dart';
loginform({
  required context,
    required formKey,
  required usernameController,
  required passwordController,
}){
   return Form(
     key: formKey,
     child: Column(
                 children: <Widget>[
                      Container(
                     padding: const EdgeInsets.all(25.0),
                     child: TextFormField(
                       controller: usernameController,
                       decoration: const InputDecoration(
                       prefixIcon: Icon(Icons.person,
                       color: Pcolor),
                       hintText: " اسم المستخدم ",
                     ),
                   )),
                   Container(
                     padding: const EdgeInsets.all(25.0),
                     child: TextFormField(
                       controller: passwordController,
                       decoration: const InputDecoration(
                       prefixIcon:Icon(Icons.remove_red_eye_outlined,
                       color: Pcolor),
                       hintText: "كلمة المرور" ,
                     ),
    ) ),
       Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: DefaultButton(
                    text: "دخول",
                    press: (){
                      Navigator.push( context, MaterialPageRoute(builder: (context){
                                        return storescreen ();}));
                    },
                  ),
                )
    ])
   );
    

}