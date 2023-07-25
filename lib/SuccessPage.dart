import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskSuccess extends StatefulWidget {
  const TaskSuccess({Key? key}) : super(key: key);

  @override
  State<TaskSuccess> createState() => _TaskSuccessState();
}

class _TaskSuccessState extends State<TaskSuccess> {

  String myEmail='';
  void GetData ()async{
     SharedPreferences sp=await SharedPreferences.getInstance();
     var setEmail=sp.getString('email');
     print(setEmail);
     // myEmail=setEmail!;
     setState(() {
       myEmail=setEmail!;
     });
  }




  @override

  void initState(){
    GetData();
    super.initState();
  }

  Widget build(BuildContext context) {
    // final arguments=ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 130),
            child: Center(
              child: Image(
                width: 130,
                image: AssetImage('assets/images/pinktick.png'),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          FractionallySizedBox(
            widthFactor: .8,
            child: Center(
              child: Text("Congratulations",style:TextStyle(fontWeight: FontWeight.bold
                  ,fontSize: 34),),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FractionallySizedBox(
            widthFactor: .8,
            child: Center(
              child: Text(myEmail,style:TextStyle(fontWeight: FontWeight.bold
                  ,fontSize: 25),),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FractionallySizedBox(
            widthFactor: .7,
            child: Center(
              child: Text("Your phone number has been verified.",style:TextStyle(fontWeight: FontWeight.w400
                  ,fontSize: 25,height: 1.5),textAlign: TextAlign.center,),
            ),
          )
          ,
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: ()async{
            SharedPreferences sp=await SharedPreferences.getInstance();
            sp.remove("email");
            sp.setBool("islogin",false);
            Navigator.pushNamed(context,'/login');
          },
              child:Text("Clear Data"))


        ]),
      ),
    );
  }
}
