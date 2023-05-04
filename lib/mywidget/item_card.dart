import 'package:flutter/material.dart';


import '../app_screen/detail_screen.dart';


class ItemCard extends StatelessWidget {
   final  String title;
   final  String price;
   final  String image;


  // final Function press;
   ItemCard({
    
    required this.title,
    required this.price,
    required this.image,


   // this.press,
  }); //: super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {}),
        
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: (){
                  Navigator.push( context, MaterialPageRoute(builder: (context){
                                      return detailpage ();}));
      
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 247, 242, 242),
                  borderRadius: BorderRadius.circular(16),
                ),
                
                  child: Image.asset("$image",
                  fit: BoxFit.cover,),
                ),
            ),
            ),
          
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20 / 4),
                child: Text(
                  // products is out demo list
                  "$title",
                  style: TextStyle(color:Colors.black),
                ),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 20 / 4,horizontal: 50),
                child: Icon(Icons.shopping_cart_outlined)
              ),
            ],
          ),
          Text(
            "$price",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }}