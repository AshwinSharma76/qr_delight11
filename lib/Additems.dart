import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'MenuItems.dart';
import 'backend/FirebaseQueries.dart';


final _formkey = GlobalKey<FormState>();

class Additems extends StatefulWidget {
  @override
  State<Additems> createState() => _Additems();
}

class _Additems extends State<Additems> {
  TextEditingController ItemName = TextEditingController();
  TextEditingController Price = TextEditingController();
  TextEditingController Category = TextEditingController();
  TextEditingController Imageurl = TextEditingController();



  @override

  Widget build(BuildContext context) {
    var sh = MediaQuery.of(context).size.height;
    var sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Qr Delight"),
      ),
      body: Container(
        height: sh,
        width: sw,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1494253109108-2e30c049369b?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              fit: BoxFit.fill),
        ),
        // color: Colors.blue,
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Spacer(),
                  Container(
                    height: 40,
                    width: 300,
                    child: TextFormField(
                      controller: ItemName,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 101, 175, 1),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 101, 175, 1),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.fastfood_outlined,
                          color: Color.fromRGBO(15, 101, 175, 1),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Item Name",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(15, 101, 175, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    child: TextField(
                      controller: Price,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 101, 175, 1),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 101, 175, 1),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.currency_rupee,
                          color: Color.fromRGBO(15, 101, 175, 1),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Price",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(15, 101, 175, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  Container(
                    height: 40,
                    width: 300,
                    child: TextField(
                      controller: Category,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 101, 175, 1),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 101, 175, 1),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.category,
                          color: Color.fromRGBO(15, 101, 175, 1),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Category",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(15, 101, 175, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 300,
                    child: TextField(
                      maxLines: 1,
                      controller: Imageurl,
                      keyboardType: TextInputType.url,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 101, 175, 1),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(15, 101, 175, 1),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.link,
                          color: Color.fromRGBO(15, 101, 175, 1),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Food Image url",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(15, 101, 175, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  Spacer(),
                  Spacer(),
                  SizedBox(
                    width: 170,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(15, 101, 175, 1),
                      ),
                      onPressed: () {


                        Map<String, dynamic> MenuItems = {
                          "ItemName": ItemName.text.toString(),
                          "Price": Price.text.toString(),
                          "Category": Category.text.toString(),
                          "Imageurl": Imageurl.text.toString(),
                          "Date_Time": DateTime.now(),
                          "OrderID": "",
                        };
                       FirebaseDataBaseWithUniqueId(data: MenuItems, collactionName: "MenuItems", key: "OrderID");
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: AlertDialog(
                                  backgroundColor: Colors.black,
                                  title: Text(
                                    "Item added successfully",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Additems()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white),
                                        child: Text("Add more")),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text(
                        "Add to Menu",
                        style: TextStyle(color: Colors.black),
                      )),

                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
