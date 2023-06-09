
import 'package:flutter/material.dart';

class cart_info extends StatelessWidget {
  final String  title;
   final String price;
  const cart_info({
    Key? key, required this.title, required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.blue.shade200,
                    image: DecorationImage(image: AssetImage("images/im.jpj.jpg"))),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          "$title",
                          maxLines: 2,
                          softWrap: true,
                        
                        ),
                      ),
                     
                     
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "$price",
                             
                            ),
                            // CounterView(counterCallback:, decreaseCallback: null, initNumber: null, increaseCallback: null, minNumber: null,)
                            // Padding(
                            //   padding: const EdgeInsets.all(8.0),
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     crossAxisAlignment: CrossAxisAlignment.end,
                            //     children: <Widget>[
                            //       Icon(
                            //         Icons.remove,
                            //         size: 24,
                            //         color: Colors.grey.shade700,
                            //       ),
                            //       Container(
                            //         color: Colors.grey.shade200,
                            //         padding: const EdgeInsets.only(bottom: 2, right: 12, left: 12),
                            //         child: Text(
                            //           "1",
                                      
                            //         ),
                            //       ),
                            //       Icon(
                            //         Icons.add,
                            //         size: 24,
                            //         color: Colors.grey.shade700,
                            //       )
                            //     ],
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        // Align(
        //   alignment: Alignment.topRight,
        //   child: Container(
        //     width: 24,
        //     height: 24,
        //     alignment: Alignment.center,
        //     margin: EdgeInsets.only(right: 10, top: 8),
        //     child: Icon(
        //       Icons.close,
        //       color: Colors.white,
        //       size: 20,
        //     ),
        //     decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(4)), color: Colors.green),
        //   ),
       // )
      ],
    );
  }
}