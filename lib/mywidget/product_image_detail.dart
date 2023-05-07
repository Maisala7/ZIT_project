import 'package:flutter/material.dart';

class productimagedetail extends StatelessWidget {
  const productimagedetail(
      {Key? key, required this.screenWidth, required this.image})
      : super(key: key);

  final Size screenWidth;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: screenWidth.width * 0.8,
      child: Stack(children: [
        Center(
          child: Container(
            height: screenWidth.width * 0.7,
            width: screenWidth.width * 0.7,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
        ),
        Center(
          child: Image.network(
            "$image",
            height: screenWidth.width * 0.5,
            width: screenWidth.width * 0.5,
            fit: BoxFit.cover,
          ),
        ),
      ]),
    );
  }
}
