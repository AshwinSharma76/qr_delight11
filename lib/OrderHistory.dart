import 'package:flutter/material.dart';

class OrderHistoy extends StatefulWidget {
  @override
  State<OrderHistoy> createState() => _OrderHistoy();
}

class _OrderHistoy extends State<OrderHistoy> {
  @override
  Widget build(BuildContext context) {
    var sh = MediaQuery.of(context).size.height;
    var sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Qr Delight"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                Text("Order History",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                Spacer(),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: sh,
              width: sw,
              color: Colors.white,
              child: ListView.builder(
                  itemCount:10,
                  itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8,left: 5,right: 5,bottom: 5),
                  child: Container(
                    height: 45,
                    width: sw*0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.blueGrey,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 7,),
                        Column(
                          children: [
                            SizedBox(height: 5,),
                            Expanded(
                                child: Text("23/10/2024",style: TextStyle(fontSize: 10),)),
                           SizedBox(height: 5,),
                            Expanded(child: Text("Back Samosa",style: TextStyle(fontSize: 10),),
                          ),
                            Spacer(),
                          ],
                        ),
                        Spacer(),
                        Text("1x"),
                        Spacer(),
                        Icon(Icons.currency_rupee,size: 15,),
                        SizedBox(width: 5,),
                        Text("256"),
                        SizedBox(width: 20,),
                      ],
                    ),

                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
