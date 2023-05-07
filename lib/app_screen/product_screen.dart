import 'package:flutter/material.dart';

import '../constant.dart';
import '../mywidget/product_body.dart';

class productscreen extends StatefulWidget {
  productscreen(this.id);
  final int id;
  @override
  State<StatefulWidget> createState() {
    return productscreenState(id);
  }
}

class productscreenState extends State<productscreen> {
  productscreenState(this.id);
  final int id;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Pcolor,
                title: const Center(
                    child: Text(
                  "اسم المتجر",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              body: Body(id));
        }));
  }
}
