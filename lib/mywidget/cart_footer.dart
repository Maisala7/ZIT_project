import 'package:flutter/material.dart';
import 'package:zit_user_screens/app_screen/userinfoscreen.dart';

class cart_card extends StatelessWidget {
   final String  total;
  const cart_card({
    Key? key, required this.total,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "المجموع",
                
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: Text(
                  "$total",
                 
                ),
              ),
            ],
          ),
        
          ElevatedButton(
            onPressed: () {
             Navigator.push(context, new MaterialPageRoute(builder: (context) => userinfo()));
            },

            child: Text(
              "تأكيد",
             
            ),
          ),
        
        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }
}