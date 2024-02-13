import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  @override
  State<MenuList> createState() => _MenuList();
}

class _MenuList extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    var sheight = MediaQuery.of(context).size.height;
    var swidth = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Menu',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          Divider(color: Colors.black, thickness: 0.2),
          // Generated code for this Row Widget...
          Container(
            //color: Colors.brown[100],
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
                              color: Colors.grey,
                            )),
                        Row(mainAxisSize: MainAxisSize.max, children: [
                          Text('Pickup',
                              style: TextStyle(
                                color: Colors.black,
                              )),
                          Icon(
                            Icons.arrow_drop_down_rounded,
                            color: Colors.black,
                            size: 24,
                          ),
                        ]),
                      ]),
                  ElevatedButton(
                    //style: ElevatedButton.styleFrom(backgroundColor: Colors.blue)
                    onPressed: () {},
                    child: Row(children: [
                      Icon(
                        Icons.ads_click,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Order here"),
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
            color: Colors.pink[100],
            height: sheight * 0.77,
            width: swidth,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 7, 15, 5),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 800,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.white10,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child:
                            Column(mainAxisSize: MainAxisSize.max, children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1470162656305-6f429ba817bf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMnx8dGVhfGVufDB8fHx8MTcwNjU2MTE2OHww&ixlib=rb-4.0.3&q=80&w=400',
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
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            textScaleFactor:
                                                MediaQuery.of(context)
                                                    .textScaleFactor,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Falafal Place',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                TextSpan(
                                                  text: ' || ',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                TextSpan(
                                                  text: '0.4 mi',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'Master P\'s Falafal',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            // style: FlutterFlowTheme.of(context).bodyLarge,
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.deepPurpleAccent[200],
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Text(
                                        "Add to Order",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  RichText(
                                    textScaleFactor:
                                        MediaQuery.of(context).textScaleFactor,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '\$250',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w600,
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
  }
}
