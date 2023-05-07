import 'package:flutter/material.dart';
import 'package:zit_user_screens/app_screen/product_screen.dart';
import 'package:zit_user_screens/mywidget/counter.dart';

import '../constant.dart';
import '../mywidget/cart_footer.dart';
import '../mywidget/cart_info.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
             // elevation: 0,
              backgroundColor: Pcolor,
              title: Center(child: Text("اسم المتجر",
              style: TextStyle(
                fontWeight: FontWeight.bold
                

              ),)),
              leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: (() {
                  Navigator.push( context, MaterialPageRoute(builder: (context){
                                        return productscreen (88);}));
              }),
              ),
            ), 
      body: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[  createCartList(), footer(context)],
            ),
          );
        },
      ),
     );
  }

  footer(BuildContext context) {
    return cart_card(total: '20000',);
  }

  

 

  createCartList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

  createCartListItem() {
    return cart_info(price: '20000', title: 'لابتوب',);
  }
}


