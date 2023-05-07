import 'package:flutter/material.dart';
import 'package:zit_user_screens/app_screen/cart_screen.dart';
import '../constant.dart';
import '../mywidget/detail_body.dart';
import '../mywidget/item_card.dart';
import '../mywidget/product_body.dart';
import 'product_screen.dart';

class detailpage extends StatelessWidget {
  detailpage(this.data);
  final data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Pcolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 247, 242, 242),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Pcolor,
            ),
            onPressed: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return productscreen(88);
              }));
            }),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Pcolor,
              ),
              onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartPage();
                }));
              }),
            ),
          ],
        ),
        body: Detailbody(
          title: data['Name'],
          price: data['Price'],
          content: data['Decription'],
          image : data['Image']
        ));
  }
}
