import 'package:flutter/material.dart';
import 'item_card.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(title: 'لابتوب', price: '3333',image: "images/im.jpj.jpg",
                
                      //  () => Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => detailpage(
                      //        // product: products[index],
                      //       ),
                          )),
                    )
                    ),
         ] );
        
      
    
  }
}