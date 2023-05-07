import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zit_user_screens/api/apiRequests.dart';
import '../constant.dart';
import '../mywidget/catogries_card.dart';
import '../mywidget/clipper.dart';
import '../mywidget/product_body.dart';

class catogriesscreen extends StatefulWidget {
  catogriesscreen({required this.id});
  final int id;
  @override
  State<StatefulWidget> createState() {
    return catogriesscreenState(id: id);
  }
}

class catogriesscreenState extends State<catogriesscreen> {
  catogriesscreenState({required this.id});
  final int id;
  DatabaseHelper databaseHelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Pcolor,
              title: Center(
                  child: Text(
                "اسم المتجر",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
            body: ListView(children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 25, left: 50),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Pcolor),
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: const Icon(Icons.search, color: Pcolor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: StreamBuilder(
                    stream: databaseHelper
                        .getStoreCategoris(storeID: id)
                        .asStream(),
                    builder: (context, snapshot) {
                      return snapshot.hasData
                          ? ListView.builder(
                              primary: false,
                              shrinkWrap: true,
                              itemCount: snapshot.data!.isEmpty
                                  ? 0
                                  : snapshot.data!.length,
                              itemBuilder: (context, i) {
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

                                
                                return category(
                                  image: snapshot.data![i]['Image'],
                                  title: snapshot.data![i]['Name'],
                                  id: snapshot.data![i]['id'],
                                );
                              })
                          : Center(
                              child: CircularProgressIndicator(),
                            );
                    }),

              )
            ]),
          );
        }));
  }
}
