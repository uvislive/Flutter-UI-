import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpSignUP extends StatefulWidget {
  const OtpSignUP({Key? key}) : super(key: key);

  @override
  State<OtpSignUP> createState() => _OtpSignUPState();
}

class _OtpSignUPState extends State<OtpSignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white54,
        child: FractionallySizedBox(
            widthFactor: .8,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(113, 20, 200,1)
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // TextFormField(
                  //   decoration:InputDecoration(
                  //
                  //       prefixIcon: Padding(
                  //         padding: const EdgeInsets.only(top: 14,left: 25,right: 30),
                  //         child: Text("Email",style: TextStyle(fontSize: 18),),
                  //       ),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(22),
                  //       )
                  //   ),
                  // ),
                  TextFormField(
                    decoration:InputDecoration(

                      prefixIcon: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
                          color: Color.fromRGBO(241, 228, 250, 1),

                        ),
                        padding: const EdgeInsets.only(top: 16,left: 20,right: 20),
                        child: Text("Mobile"),
                      ),

                      contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        // borderSide: BorderSide(color: Color.fromRGBO(241, 228, 250, 1))
                      ),

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          borderSide: BorderSide(color: Color.fromRGBO(241, 228, 250, 1), width: 3.5)
                      ),



                    ),
                  ),

                  SizedBox(
                    height: 35,
                  ),

                  Container(
                    width: double.infinity,
                    // height: 45,
                    // color: Colors.deepPurpleAccent,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Color.fromRGBO(113, 20, 200,1),
                          padding: EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(22)
                          ),
                          elevation: 2,

                        ),
                        onPressed: (){},
                        child: Text("Sign in",style: TextStyle(fontSize: 17),)),
                  )
                  ,
                  SizedBox(
                    height: 10,
                  ),


                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ? ",style:TextStyle(fontSize: 17),),
                      Text("Create", style:TextStyle(fontSize: 17,color: Colors.deepPurpleAccent)),
                    ],
                  )

                ],
              ),
            )),
      ),
    );
  }
}
