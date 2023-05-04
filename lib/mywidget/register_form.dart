 import 'package:flutter/material.dart';

import '../app_screen/log_in.dart';
import '../constant.dart';
import 'default_button.dart';

 // ignore: non_constant_identifier_names
 Registrationform(
  {required context,
    required formKey,
    required usernameController,
    required phoneController, 
    required confirmpasswordController,
    required passwordController}){
    return Container(
      color: Colors.white10,
     // height: 400,
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
           
                Column(
                  children: <Widget>[
                       Container(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                        prefixIcon:Icon(Icons.person,
                        color:Pcolor),
                        hintText: " اسم المستخدم ",
                      ),
                    )),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                        prefixIcon:Icon(Icons.phone,
                        color:Pcolor),
                        hintText: "رقم الهاتف", 
                      ),
                    )),
                        Container(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                       prefixIcon:Icon(Icons.password,
                        color:Pcolor),
                        hintText: " كلمة السر ",
                      ),
                    )),
                       Container(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: confirmpasswordController,
                        decoration: const InputDecoration(
                      
                        prefixIcon:Icon(Icons.password_outlined,
                        color:Pcolor),
                        hintText: "تاكيد كلمة السر ",
                      ),
                    )),
           
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: DefaultButton(
                    text: "تسجيل",
                    press: (){
                      Navigator.push( context, MaterialPageRoute(builder: (context){
                                        return Loginscreen ();}));
                    },
                  ),
                )
                
           ] ) ])));   
        
    

    }
 
