import 'package:flutter/material.dart';

class OrderNow extends StatefulWidget {
  @override
  State<OrderNow> createState() => _OrderNow();
}

class _OrderNow extends State<OrderNow> {
  @override
  Widget build(BuildContext context) {

    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Order Cart",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: sheight * 0.75,
              width: swidth,
              color: Colors.black,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      height: sheight * 0.15,
                      width: swidth * 0.95,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.blueAccent,
                            width: 2,
                          )),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              height: sheight * 0.10,
                              width: swidth * 0.22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: Colors.blueAccent,
                                  width: 1,
                                ),
                                //color: Colors.blue,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://img.freepik.com/free-photo/penne-pasta-tomato-sauce-with-chicken-tomatoes-wooden-table_2829-19744.jpg?w=1060&t=st=1707764192~exp=1707764792~hmac=47102ce4a9bc5217d7cfbeb4bdc43c192f7c9c2086ce39b3d42bfe241ea1b96b"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Spacer(),
                                Text(
                                  "Back Samosa",
                                  style: TextStyle(
                                    color: Colors.white,
                                      fontWeight: FontWeight.w600, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "\$254",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                          SizedBox(width: 5,),

                          Container(height: 25,width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueAccent,
                          ),
                          child: Icon(Icons.add,color: Colors.white,size: 20,),),
                          SizedBox(width: 5,),
                          Text("1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                          SizedBox(width: 5,),
                          Container(height: 25,width: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blueAccent,
                            ),
                            child: Column(

                              children: [
                                Icon(Icons.minimize_sharp,color: Colors.white,size: 20,),
                              //  SizedBox(height: 5,)
                                Spacer(),
                              ],
                            ),),
                          SizedBox(width: 15,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.blueAccent,)),
                          SizedBox(width: 10,),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 110,
              width: swidth,
              color: Colors.black,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blueAccent, width: 2)),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Amount',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                            // Generated code for this Text Widget...
                            Text(
                              "\$562",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                     Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                        ),
                        child: Text(
                          "Order",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
