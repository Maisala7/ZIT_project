import 'package:flutter/material.dart';
import 'color_dot.dart';
import 'product_image_detail.dart';

class Detailbody extends StatelessWidget {
  final String title;
  final String price;
  final String content;
  final String image;

  const Detailbody(
      {super.key,
      required this.title,
      required this.price,
      required this.content,
      required this.image});

  @override
  Widget build(BuildContext context) {
    Size screenWidth = MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 247, 242, 242),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            )),
        child: Column(children: [
          productimagedetail(
            screenWidth: screenWidth,
            image: ("http://vzzoz.pythonanywhere.com/$image"),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical:3),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       colorDot(fillcolor: Colors.red, isselected: true,),
          //       colorDot(fillcolor: Colors.blue, isselected: false,),
          //       colorDot(fillcolor: Colors.black, isselected: false,)
          //     ],
          //   ),
          // ),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  " $title",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              )),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 50, bottom: 5),
                child: Text(
                  " $price",
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ))
        ]),
      ),
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
            child: Text(
          "$content",
          style: TextStyle(color: Colors.white, fontSize: 20),
        )),
      )
    ]);
  }
}






      //    child: Column(children: [
        //    Container(
        //   height: 400,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.only(
        //       bottomLeft:Radius.circular(50),
        //       bottomRight:Radius.circular(50),

        //      ) ),
        //      child:Center(
        //       child: CircleAvatar(
        //         backgroundColor: Colors.blue,
        //         radius: 100,
        //         //child: Image.asset('images/im.jpj.jpg'),
        //         )) ,
        //    ) 
        //    ]),
        // )