import 'package:flutter/material.dart';
import 'package:zit_user_screens/api/apiRequests.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  Body(this.id);
  final int id;
  DatabaseHelper databaseHelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: StreamBuilder(
              stream:
                  databaseHelper.getCategoryProducts(categoryId: id).asStream(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 0.75,
                        ),
                        primary: false,
                        shrinkWrap: true,
                        itemCount:
                            snapshot.data!.isEmpty ? 0 : snapshot.data!.length,
                        itemBuilder: (context, i) {
                          print(snapshot.data);
                          return ItemCard(
                            title: snapshot.data![i]['Name'],
                            price: snapshot.data![i]['Price'],
                            image: snapshot.data![i]['Image'],
                            data:snapshot.data![i],

                            //  () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => detailpage(
                            //        // product: products[index],
                            //       ),
                          );
                          // return snapshot.data![i]['Name']
                          //         .toString()
                          //         .toLowerCase()
                          //         .contains(
                          //             (global.searchText.toLowerCase()))
                          //     ? ProductCard(
                          //         id: snapshot.data![i]['id'],
                          //         title: snapshot.data![i]['Name'],
                          //         subtitle: snapshot.data![i]['Decription'],
                          //         price:
                          //             int.parse(snapshot.data![i]['Price']),
                          //         quantity: snapshot.data![i]['Quantity'],
                          //         image: snapshot.data![i]['Image'],
                          //         lang: lang,
                          //       )
                          //     : Container();

         
                        })
                    : Center(
                        child: CircularProgressIndicator(),
                      );
              }),
        ),
      ],
    );
  }
}
