import 'package:flutter/material.dart';
import 'package:zit_user_screens/api/apiRequests.dart';

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
    required passwordController,
    required userEmail}) {
  DatabaseHelper databaseHelper = DatabaseHelper();
  return Container(
      color: Colors.white10,
      // height: 400,
      child: Form(
          key: formKey,
          child: Column(children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Pcolor),
                    hintText: " اسم المستخدم ",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "حقل  اسم المستخدم مطلوب";
                    }
                    return null;
                  },
                )),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Pcolor),
                    hintText: "رقم الهاتف",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "حقل رقم الهاتف  مطلوب";
                    }
                    return null;
                  },
                )),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: userEmail,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password, color: Pcolor),
                    hintText: "البريد الإلكتروني",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "حقل  البريد الإلكتروني مطلوب";
                    }
                    return null;
                  },
                )),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password, color: Pcolor),
                    hintText: " كلمة السر ",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "حقل كلمة السر مطلوب";
                    }
                    return null;
                  },
                )),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: confirmpasswordController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password_outlined, color: Pcolor),
                    hintText: "تاكيد كلمة السر ",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "حقل  تاكيد كلمة المرور مطلوب";
                    } else if (value != passwordController.text) {
                      return "كلمة المرور غير متطابقة";
                    }
                    return null;
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: DefaultButton(
                text: "تسجيل",
                press: () async {
                  if (formKey.currentState!.validate()) {
                    await databaseHelper.registerData(
                      username: usernameController.text.trim(),
                      password: passwordController.text,
                      email: userEmail.text,
                      gender: 'Male',
                      phoneNumber: phoneController.text,
                    );
                  }
                  if (databaseHelper.success == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Loginscreen();
                    }));
                  } else {
                    print(databaseHelper.success);
                  }
                },
              ),
            )
          ])));
}
