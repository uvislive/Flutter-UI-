import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpLogin extends StatefulWidget {
  const OtpLogin({Key? key}) : super(key: key);

  @override
  State<OtpLogin> createState() => _OtpLoginState();
}

class _OtpLoginState extends State<OtpLogin> {
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
                    "OTP VERIFICATION",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(113, 20, 200,1),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  Text("A verification code has been sent to \nyour Mobile number .",
                    style:TextStyle(fontSize: 19),),

                  SizedBox(
                    height: 30,
                  ),


                  OtpTextField(
                    numberOfFields: 5,

                    borderColor:Color.fromRGBO(113, 20, 200,1),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    fieldWidth: 55,
                  // decoration:InputDecoration(
                  //   border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(44)
                  //   )
                  // ),
                  //   decoration: InputDecoration(
                  //     enabledBorder: OutlineInputBorder(
                  //       borderSide: BorderSide(
                  //           width: 3, color: Colors.greenAccent), //<-- SEE HERE
                  //     ),
                  //

                    borderRadius:BorderRadius.all(
                      Radius.circular(22)
                    ),
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                            );
                          }
                      );
                    }, // end onSubmit
                  ),


                  SizedBox(
                    height: 30,
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
                        child: Text("Confirm",style: TextStyle(fontSize: 17),)),
                  )
                  ,
                  SizedBox(
                    height: 10,
                  ),


                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn't recieve the code? ",style:TextStyle(fontSize: 17),),
                      Text("Resend", style:TextStyle(fontSize: 17,
                          color: Color.fromRGBO(113, 20, 200,1),
                      )),
                      Text("(45s)",style:TextStyle(fontSize: 17),)
                    ],
                  )

                ],
              ),
            )),
      ),
    );
  }
}
