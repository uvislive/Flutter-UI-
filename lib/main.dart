import 'package:flutter/material.dart';
import 'package:instacart/Alerts.dart';
import 'package:instacart/Exercise3.dart';
import 'package:instacart/IntroApp.dart';
import 'package:instacart/Otp1.dart';
import 'package:instacart/OtpLogin.dart';
import 'package:instacart/OtpSignUp.dart';
import 'package:instacart/Register.dart';
import 'package:instacart/UserInterface2.dart';
import 'package:instacart/media_query.dart';
import 'package:instacart/myBlock.dart';
import 'package:instacart/myOtp.dart';
import 'package:instacart/my_media_query.dart';
import 'package:instacart/otpSign.dart';
import 'package:instacart/pages/about_page.dart';
import 'package:instacart/pages/contact_page.dart';
import 'package:instacart/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:instacart/apiModal.dart';
import 'package:get/get.dart';
import 'package:instacart/SuccessPage.dart';

import 'package:instacart/Login.dart';
import 'package:instacart/userInterface1.dart';


void main() {
  // runApp(const MyApp());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Retrofit practice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const Home(),
      // home: Home(),
      navigatorKey: Get.key,
      initialRoute:"/contact",
      routes: {
        '/success':(context)=>TaskSuccess(),
        '/login':(context)=>TaskOneLogin(),
        '/register':(context)=>TaskTwoRegister(),
        "/alert":(context)=>AlertPage(),
        "/intro":(context)=>IntroApp(),
        "/myblock":(context)=>MyBlock(),
        '/otp':(context)=>myOtpScreen(),
        '/otplogin':(context)=>OtpLogin(),
        '/otpsignup':(context)=>OtpSignUP(),
        '/ex3':(context)=>ExerciseThree(),
        '/ui':(context)=> UserInterface(),
        "/ui1":(context)=>UserInterfaceOne(),
        '/media':(context)=>MediaPage(),
        "/media2":(context)=>MyMediaQuery(),
        "/about":(context)=> AboutPage(),
        "/contact":(context)=>ContactPage()
      },
    );

  }
}

class Home extends StatefulWidget {

  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Retrofit Practice"),
      ),
      body: pressed ? _buildPost(context):Center(
        child: TextButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
          child: const Text("Show Users", style: TextStyle(color: Colors.white,fontSize: 18),),
          onPressed: () => {
            setState(
                    () {
                  pressed = true;
                }
            )
          },
        ),

      ),
    );
  }
}

FutureBuilder<ResponseData> _buildPost(BuildContext context) {
  // Dio object
  Dio dio = Dio(BaseOptions(contentType: "application/json"));
  final client = getRequest(dio, baseUrl: 'https://gorest.co.in/public-api/');
  return FutureBuilder<ResponseData>(
    future: client.fetchData(),
    builder: (context, snapshot) {
      if(snapshot.hasData){
        final myData = snapshot.data;
        if(myData != null){
          return _builldPage(context, myData);
        }else{
          return Center(child: Container());
        }
      }
      else{
        return const Center(child: CircularProgressIndicator());
      }

    },
  );
}

Widget _builldPage(BuildContext context, ResponseData myData) {
  return ListView.builder(
      itemCount: myData.data.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: const Icon(Icons.person_pin, color: Colors.blue,size: 50,),
            title: Text(myData.data[index].name, style: const TextStyle(fontSize: 20),),
            subtitle: Text(myData.data[index].email),
            trailing: Icon(Icons.message,size: 30,color: Colors.blue,),
          ),
        );
      });
}

