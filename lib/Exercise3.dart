import 'dart:ui';

import 'package:flutter/material.dart';

class ExerciseThree extends StatelessWidget {
  const ExerciseThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height:MediaQuery.of(context).size.height*.40,
                      width:MediaQuery.of(context).size.width*1,
                      color: Colors.blue,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            Image(
                              image: AssetImage('assets/images/data1.png'),
                              width: 125,
                            ),
                            SizedBox(
                              height: 17,
                            ),

                            Text("Drop us a line",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),

                    ),
                    Container(
                      height:MediaQuery.of(context).size.height*.40,
                      width:MediaQuery.of(context).size.width*1,
                      color: Colors.pinkAccent,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            Image(
                              image: AssetImage('assets/images/data1.png'),
                              width: 125,
                            ),
                            SizedBox(
                              height: 17,
                            ),

                            Text("Drop us a line",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),

                    ),
                    Container(
                      height:MediaQuery.of(context).size.height*.40,
                      width:MediaQuery.of(context).size.width*1,
                      color: Colors.pinkAccent,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            Image(
                              image: AssetImage('assets/images/data1.png'),
                              width: 125,
                            ),
                            SizedBox(
                              height: 17,
                            ),

                            Text("Drop us a line",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold,color: Colors.white),)
                          ],
                        ),
                      ),

                    ),


                  ],
                ),
              ),
              SizedBox(
                // height: double.infinity,
                // width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                    Icon(Icons.location_on_sharp,size: 35,color: Colors.red,),
                      SizedBox(
                        height: 12,
                      ),
                      Text("267 Julien MotorWay\nTennessee, 86947-3243",
                      textAlign:TextAlign.center,
                      style: TextStyle(fontSize: 20,fontFamily:"Cairo",fontWeight: FontWeight.w500
                      ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Open map",
                        textAlign:TextAlign.center,
                        style: TextStyle(fontSize: 20,color: Colors.blue,fontFamily:"Cairo",fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Icon(Icons.phone_android,size: 34,color: Colors.red,),
                      SizedBox(
                        height: 14,
                      ),
                      Text("(800)225-930-5723",
                        textAlign:TextAlign.center,
                        style: TextStyle(fontSize: 18,fontFamily:"Cairo",color: Colors.black87,fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Icon(Icons.timer,size: 34,color: Colors.red,),
                      SizedBox(
                        height: 12,
                      ),
                      Text("Monday-Friday\n 5am - 9pm",
                        textAlign:TextAlign.center,
                        style: TextStyle(fontSize: 20,fontFamily:"Cairo",fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text("Saturday-Sunday\n 9am - 12pm",
                        textAlign:TextAlign.center,
                        style: TextStyle(fontSize: 20,fontFamily:"Cairo",fontWeight: FontWeight.w500
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),



    );
  }
}
