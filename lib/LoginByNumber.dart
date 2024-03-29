import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:qr_delight/VerifyOtp.dart';

class LoginByNumber extends StatefulWidget {
  @override
  State<LoginByNumber> createState() => _LoginByNumber();
}

class _LoginByNumber extends State<LoginByNumber> {
  TextEditingController Mobnum = TextEditingController();
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
                    "https://www.foodiesfeed.com/wp-content/uploads/2023/09/pears.jpg"),
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
                          controller: Mobnum,
                          keyboardType: TextInputType.number,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Enter Mobile Number',
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
                      height: 50,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[500],
                      ),
                      onPressed: () async {
                        await FirebaseAuth.instance.verifyPhoneNumber(
                            verificationCompleted:
                                (PhoneAuthCredential credential) {
                              print("verification complete");
                                },
                            verificationFailed: (FirebaseAuthException ex) {
                              print(ex);
                            },
                            codeSent:
                                (String verficationid, int? resendtoken) {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyOtp(verificationid: '$verficationid',)));
                                },
                            codeAutoRetrievalTimeout:
                                (String verificationid) {},
                            phoneNumber: Mobnum.text.toString());
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

//verify opt
