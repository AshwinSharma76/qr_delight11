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
      appBar: AppBar(
        title: Text(
          "Order Cart",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: sheight * 0.75,
            width: swidth,
            color: Colors.grey[200],
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    height: sheight * 0.15,
                    width: swidth * 0.95,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white10,
                          width: 1,
                        )),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            height: sheight * 0.12,
                            width: swidth * 0.18,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.purpleAccent,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            Text(
                              "Back Samosa",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$254",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            Spacer(),
                          ],
                        ),
                        Spacer(),
                        Container(height: 25,width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Icon(Icons.add,color: Colors.white,size: 20,),),
                        SizedBox(width: 5,),
                        Text("1",style: TextStyle(fontWeight: FontWeight.w600),),
                        SizedBox(width: 5,),
                        Container(height: 25,width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.deepPurpleAccent,
                          ),
                          child: Column(

                            children: [
                              Icon(Icons.minimize_sharp,color: Colors.white,size: 20,),
                            //  SizedBox(height: 5,)
                              Spacer(),
                            ],
                          ),),
                        SizedBox(width: 15,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.deepPurple,)),
                        SizedBox(width: 10,),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: sheight * 0.14,
            width: swidth,
            color: Colors.grey[200],
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white60, width: 1)),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Amount',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                            // Generated code for this Text Widget...
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 8, 0),
                              child: Text(
                                "\$562",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
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
    );
  }
}
