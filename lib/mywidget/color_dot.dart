
import 'package:flutter/material.dart';
class colorDot extends StatelessWidget {
  const colorDot({
    Key? key, required this.fillcolor, 
     this.isselected= false,
  }) : super(key: key);
  final Color fillcolor;
  final bool isselected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20/2.5),
      padding:EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color:isselected? Colors.grey:Colors.transparent),

      ),
      child: Container(
        decoration:BoxDecoration(
        shape: BoxShape.circle,
        color:fillcolor 
       ) ),
    );
  }
}
