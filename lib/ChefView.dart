import 'package:flutter/material.dart';
class ChefView extends StatefulWidget
{
  @override
  State<ChefView> createState()=> _ChefView();
}

class _ChefView extends State<ChefView> {
  @override
  Widget build(BuildContext context) {
    var sh =MediaQuery.of(context).size.height;
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
             Text("Orders",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
             Spacer(),
           ],
         ),
         SizedBox(height: 20,),
         Container(
           height: sh,
           width: sw,
           color: Colors.white,
           child: ListView.builder(
               itemCount: 5,
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

                         Expanded(child: Text("Back Samosa",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                         ),
                         Spacer(),

                         Text("1x",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
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
