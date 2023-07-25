import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:instacart/Register.dart';
import 'package:instacart/SuccessPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

// import 'package:shared_preferences/shared_preferences.dart';

class TaskOneLogin extends StatefulWidget {
  const TaskOneLogin({Key? key}) : super(key: key);

  @override
  State<TaskOneLogin> createState() => _TaskOneLoginState();
}

class _TaskOneLoginState extends State<TaskOneLogin> {
  final _textController=TextEditingController();
  final passController=TextEditingController();

  String userPost='';
  String password="";
  // final SharedPreferences sp= await SharedPreferences.getInstance();
 String haveEmail='';
  ValidateData()async{
    SharedPreferences sp=await SharedPreferences.getInstance();
    sp.setBool("isLogin", false);
    var myData= sp.getString("email");
    print(myData);
    setState(() {
      haveEmail=myData!;
      sp.setBool("isLogin",true);
      Navigator.pushNamed(context, '/success');
    });
  }



  @override

  void initState(){
    ValidateData();
    super.initState();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              child: Center(
                child: Text("POOL",style: TextStyle(fontSize: 55,color:Colors.pink,
                    fontWeight:FontWeight.w500, letterSpacing: 5),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Center(
                child: Text("WELCOME BACK",style: TextStyle(fontSize: 21,
                    fontWeight:FontWeight.w400, wordSpacing: 12),),
              ),
            ),

            SizedBox(
              height: 30,
            ),



            FractionallySizedBox(
              widthFactor: .8,
              child: TextFormField(
                controller: _textController,
                decoration: InputDecoration(

                    labelText:"Email Address",
                    contentPadding: EdgeInsets.symmetric(vertical: 17,horizontal: 26),
                    labelStyle: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                    border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(11)
                    )
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),

            FractionallySizedBox(
              widthFactor: .8,
              child: TextFormField(
                controller: passController,
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    labelText:"Password",
                    contentPadding: EdgeInsets.symmetric(vertical: 17,horizontal: 26),
                    labelStyle: new TextStyle( fontWeight: FontWeight.bold, fontSize: 18.0),
                    border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(11)
                    )
                ),
              ),
            ),

            FractionallySizedBox(
              widthFactor: .8,
              child: Container(
                height: 50,
                alignment:Alignment.centerRight,
                child: Text("Forgot Password?",style:TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400),),
              ),
            ),
            FractionallySizedBox(
              widthFactor: .8,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22)
                    )
                ),
                onPressed: ()async{
                  setState(() {
                    userPost=_textController.text;
                    password=passController.text;
                  });

                  SharedPreferences sp= await SharedPreferences.getInstance();
                  sp.setString('email',userPost);
                  print(sp.getString("email"));


                  print(userPost);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskSuccess()));

                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text("LOGIN",style:TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: .8,
              child: Container(
                height: 60,
                alignment:Alignment.center,
                child: Text("---------------- Or Login With -----------------",style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400),),
              ),
            ),

            InkWell(
              onTap: (){
                Navigator.pushNamed(context,"/register");
              },
              child: FractionallySizedBox(
                  widthFactor: .8,
                  child:Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage("assets/images/facebook.png"),width: 45,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage("assets/images/google.png"),width: 35,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage("assets/images/twitter.png"),width: 45,),
                        )
                      ],

                    ),
                  )
              ),
            ),
            SizedBox(
              height: 15,
            ),

            FractionallySizedBox(
              widthFactor: .8,
              child: Align(
                alignment: Alignment.center,
                child: Text('By clicking Login you agree with our terms. Learn how'
                    'we process your data in our privacy policy and cookies policy',textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black45,height: 1.5
                  ),),
              ),
            )

          ],
        ),
      ),

    );
  }
}
