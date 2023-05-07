import 'package:flutter/material.dart';
import 'package:zit_user_screens/api/apiRequests.dart';
import '../app_screen/store_screen.dart';
import '../constant.dart';
import 'default_Button.dart';

loginform({
  required context,
  required formKey,
  required usernameController,
  required passwordController,
}) {
  DatabaseHelper databaseHelper = DatabaseHelper();
  return Form(
      key: formKey,
      child: Column(children: <Widget>[
        Container(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person, color: Pcolor),
                hintText: " اسم المستخدم ",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "حقل اسم المستخدم مطلوب";
                }
                return null;
              },
            )),
        Container(
            padding: const EdgeInsets.all(25.0),
            child: TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.remove_red_eye_outlined, color: Pcolor),
                hintText: "كلمة المرور",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "حقل كلمة السر مطلوب";
                }
                return null;
              },
            )),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: DefaultButton(
            text: "دخول",
            press: () async {
              if (formKey.currentState!.validate()) {
                await databaseHelper.loginData(
                  username: usernameController.text.trim(),
                  password: passwordController.text,
                );
              }
              if (databaseHelper.success == true) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return storescreen();
                }));
              } else {
                print(databaseHelper.success);
              }
            },
          ),
        )
      ]));
}
