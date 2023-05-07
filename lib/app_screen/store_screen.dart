import 'package:flutter/material.dart';
import 'package:zit_user_screens/api/apiRequests.dart';

import '../constant.dart';
import '../mywidget/store_card.dart';

class storescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return storescreenState();
  }
}

class storescreenState extends State<storescreen> {
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
            backgroundColor: Pcolor,
            body: ListView(children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text(
                  "زول اي تي مول",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
              StreamBuilder(
                  stream: databaseHelper.getStores().asStream(),
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

                              return Storecard(
                                  snapshot.data![i]['Image'],
                                  snapshot.data![i]['Name'],
                                  snapshot.data![i]['id']);
                            })
                        : Center(
                            child: CircularProgressIndicator(),
                          );
                  }),

            ]),
          );
        }));
  }
}
