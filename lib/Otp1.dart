import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => OTPScreenState();
}

class OTPScreenState extends State<OTPScreen> {
  int time = 45;
  Timer? timer;


  @override
  void initState() {
    // TODO: implement initState
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) => Future.delayed(const Duration(seconds: 0),(){
      setState(() {
        if(time > 0){
          time--;
        }
      });
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Column(
                children: [

                  SizedBox(
                    height: size.height/20,
                  ),
                  const Text(
                    "OTP Verification",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.deepPurple),
                  ),
                  SizedBox(height: size.height/30,),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text("A verification code has been sent to your mobile number.",style: TextStyle(fontSize: 18),),
                  ]),
                  SizedBox(height: size.height/30,),
                  OtpTextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.greenAccent),),),
                    numberOfFields: 5,
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {},
                  ),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Didn't Receive the OTP? ",style: TextStyle(fontSize:18 ),),
                      InkWell(
                        onTap: () {},
                        child: Text('Resend OTP ($time)',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 18),),
                      ),


                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}