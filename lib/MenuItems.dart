import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Order_now.dart';
import 'backend/FirebaseQueries.dart';

class MenuItems extends StatefulWidget {
  @override
  State<MenuItems> createState() => _MenuItems();
}

class _MenuItems extends State<MenuItems> {
  @override
  Widget build(BuildContext context) {
    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.blueAccent,
              )),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: DefaultTextStyle(
          style: TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
              shadows: [Shadow(color: Colors.white, blurRadius: 0.4)]),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText("Qr Delight"),
            ],
            repeatForever: true,
            isRepeatingAnimation: true,
          ),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection("MenuItems").snapshots(),
          builder: (context, snapshots) {
            if (snapshots.connectionState == ConnectionState.active) {
              if (snapshots.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.wh,
                        height: 60,
                        width: swidth,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Order Type',
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Center(
                                                child: Container(
                                                  height: sheight * 0.5,
                                                  width: swidth * 0.8,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: sheight * 0.4,
                                                        width: swidth * 0.8,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                        ),
                                                        child: ListView.builder(
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                          return Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    10),
                                                            child: Row(
                                                              children: [],
                                                            ),
                                                          );
                                                        }),
                                                      ),
                                                      Spacer(),
                                                      Row(
                                                        children: [
                                                          Spacer(),
                                                          ElevatedButton(
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    Colors
                                                                        .blueAccent,
                                                              ),
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Text(
                                                                "Cancle",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              )),
                                                          Spacer(),
                                                          ElevatedButton(
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                backgroundColor:
                                                                    Colors
                                                                        .blueAccent,
                                                              ),
                                                              onPressed: () {},
                                                              child: Text(
                                                                "Select",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              )),
                                                          Spacer(),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      },
                                      child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text('Pickup',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                )),
                                            Icon(
                                              Icons.arrow_drop_down_rounded,
                                              color: Colors.blueAccent[700],
                                              size: 24,
                                            ),
                                          ]),
                                    ),
                                  ]),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OrderNow()));
                                },
                                child: Row(children: [
                                  Icon(
                                    Icons.ads_click,
                                    size: 15,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Order here",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        color: Colors.black,
                        //color: Colors.pink[100],
                        height: sheight * 0.85,
                        width: swidth,
                        child: ListView.builder(
                            itemCount: (snapshots.data!.docs.length),
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 7, 10, 10),
                                child: Container(
                                  width: double.infinity,
                                  constraints: BoxConstraints(
                                    maxWidth: 800,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Colors.blueAccent,
                                      width: 2,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            child: Image.network(
                                              '${snapshots.data!.docs[index]["Imageurl"]}',
                                              width: double.infinity,
                                              height: 200,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(4),
                                            child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          RichText(
                                                            textScaleFactor:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaleFactor,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      '${snapshots.data!.docs[index]["Category"]}',
                                                                  style: TextStyle(
                                                                      color: Colors.white,
                                                                      //color: Colors.grey,
                                                                      fontSize: 11,
                                                                      fontWeight: FontWeight.w500),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                            '${snapshots.data!.docs[index]["ItemName"]}',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              //color: Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                            // style: FlutterFlowTheme.of(context).bodyLarge,
                                                          ),
                                                        ]),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10),
                                                    child: ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        backgroundColor:
                                                            Colors.blueAccent,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        var value = 1;
                                                        Map<String, dynamic>
                                                            data = {
                                                          "OrderId": "",
                                                          "Quantity": value <= 0
                                                              ? 0
                                                              : value,
                                                          "Time":
                                                              Timestamp.now(),
                                                          "ProductId": snapshots
                                                              .data!
                                                              .docs[index]
                                                              .id,
                                                          "Price":
                                                              '${snapshots.data!.docs[index]["Price"]}',
                                                          "ImageUrl":
                                                              '${snapshots.data!.docs[index]["Imageurl"]}',
                                                          "UserID": FirebaseAuth
                                                              .instance
                                                              .currentUser!
                                                              .phoneNumber,
                                                        };
                                                        try{
                                                          FirebaseDataBaseWithUniqueId(
                                                              data: data,
                                                              collactionName:
                                                                  'OrderCart',
                                                              key: 'OrderId');
                                                        }catch(e)
                                                        {
                                                          print("OrderCart error");
                                                          print(e.toString());
                                                        }
                                                      },
                                                      child: Text(
                                                        "Add to Order",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black,
                                                          // color: Colors.white
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  RichText(
                                                    textScaleFactor:
                                                        MediaQuery.of(context)
                                                            .textScaleFactor,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              '₹ ${snapshots.data!.docs[index]["Price"]}',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              // color: Colors.grey,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 13),
                                                        )
                                                      ],
                                                      //style: FlutterFlowTheme.of(context).labelSmall,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ]),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                );
              } else if (snapshots.hasError) {
                return Center(
                  child: Text("${snapshots.hasError.toString()}"),
                );
              } else {
                return Center(
                  child: Text("No data Found"),
                );
              }
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
