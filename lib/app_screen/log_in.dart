import 'package:flutter/material.dart';
import '../constant.dart';
import '../mywidget/clipper.dart';
import '../mywidget/login_form.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginscreenState();
  }
}

class LoginscreenState extends State<Loginscreen> {
  final addLoginformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final addPasswordController = TextEditingController();
    final addusernameController = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Column(children: [
                Flexible(
                    child: ClipPath(
                        clipper: CustomClipPath(),
                        child: Container(
                          height: 250,
                          color: Pcolor,
                        ))),
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Text(
                        "تسجيل الدخول",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Pcolor,
                        ),
                      ),
                    )),
                loginform(
                    context: context,
                    formKey: addLoginformKey,
                    usernameController: addusernameController,
                    passwordController: addPasswordController)
              ]));
        }));
  }
}
