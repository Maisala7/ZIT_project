 
 import 'package:flutter/material.dart';

import '../constant.dart';
import '../mywidget/clipper.dart';
import '../mywidget/register_form.dart';
class Registrationscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegistrationscreenState();
  }
}
  class RegistrationscreenState extends State<Registrationscreen>{
    
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
     double screenHeight = MediaQuery.of(context).size.height;
      
     final addregisterformKey = GlobalKey<FormState>();
      final addPasswordController = TextEditingController();
      final addaconfirmpassController = TextEditingController();
      final addphoneController = TextEditingController();
      final addUsernameController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder:(BuildContext context,BoxConstraints constraints){
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child:Column(
              children: [
                Flexible(
            child: ClipPath(
              clipper:CustomClipPath (),
              child: Container(
                height: 300,
                color:Pcolor,
              
                ))
                ),
                 const Align  (
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(" انشاء حساب",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Pcolor,
                  ),
                  ),
                )),
                Registrationform(
                         formKey:addregisterformKey ,
                        usernameController: addUsernameController,
                        passwordController: addPasswordController,
                        confirmpasswordController: addaconfirmpassController,
                        phoneController: addphoneController,
                        context: context),
              ]),

            
            );
            }));}}