import 'package:flutter/material.dart';
class Additems extends StatefulWidget
{
  @override
  State<Additems> createState() =>_Additems();
}
class _Additems extends State<Additems>
{
  @override
  Widget build(BuildContext context) {
    var sh= MediaQuery.of(context).size.height;
    var sw= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title:  Text("Qr Delight"),
      ),
      body: Container(
        height: sh,
        width: sw,
       // color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: 225,
                  child: TextField(
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
                      labelText: "Food Name",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(15, 101, 175, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: 225,
                  child: TextField(
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
              ],
            ),
            SizedBox(width:20,),
            Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: 225,
                  child: TextField(
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
                        Icons.person,
                        color: Color.fromRGBO(15, 101, 175, 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(15, 101, 175, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: 225,
                  child: TextField(
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
                        Icons.person,
                        color: Color.fromRGBO(15, 101, 175, 1),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(15, 101, 175, 1),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],

        ),
      ),
    );
  }
}
