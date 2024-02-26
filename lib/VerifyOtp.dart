import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:qr_delight/MenuItems.dart';





class VerifyOtp extends StatefulWidget {
  String verificationid;
  VerifyOtp({super.key, required this.verificationid});
  @override
  State<VerifyOtp> createState() => _VerifyOtp();
}

class _VerifyOtp extends State<VerifyOtp> {
  TextEditingController Otpcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qr Delight"),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              //color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    "https://images.pexels.com/photos/2090900/pexels-photo-2090900.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Spacer(),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.99,
                height: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 244, 248, 0.2),
                  shape: BoxShape.circle,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    // Generated code for this Text Widget...
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Text(
                        'Qr Delight',
                        maxLines: 1,
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          fontSize: MediaQuery.of(context).size.width * 0.09,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    // Generated code for this TextField Widget...
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        height: MediaQuery.sizeOf(context).height * 0.08,
                        child: TextFormField(
                          controller: Otpcontroller,
                          keyboardType: TextInputType.phone,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Enter Otp',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF000000),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Resend Otp",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[500],
                      ),
                      onPressed: () async {
                        try {
                          PhoneAuthCredential credential =
                              await PhoneAuthProvider.credential(
                                  verificationId: widget.verificationid,
                                  smsCode: Otpcontroller.text.toString());
                          FirebaseAuth.instance.signInWithCredential(credential).then((value){

                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuItems()));


                          });
                        } catch (ex) {
                          log(ex.toString());
                        }
                      },
                      child: Text(
                        "Verify",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
