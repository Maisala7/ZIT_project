import 'package:flutter/material.dart';

import '../constant.dart';




class DefaultButton extends StatelessWidget {
  const DefaultButton({
  
    this.text,
    this.press,
  }) ;
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: Pcolor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize:18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}