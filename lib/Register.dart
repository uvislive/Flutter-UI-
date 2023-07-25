import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskTwoRegister extends StatefulWidget {
  const TaskTwoRegister({Key? key}) : super(key: key);

  @override
  State<TaskTwoRegister> createState() => _TaskTwoRegisterState();
}

class _TaskTwoRegisterState extends State<TaskTwoRegister> {
  final _textController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  String userPost='';
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
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 70,
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
                  child: Text("REGISTER ACCOUNT",style: TextStyle(fontSize: 21,
                      fontWeight:FontWeight.w400, wordSpacing:5),),
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
                  validator: (value){
                    if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}').hasMatch(value!) ){
                      return 'Enter Correct email';
                    }else{
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FractionallySizedBox(
                widthFactor: .8,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/india.png',
                          height: 10.0,
                        ),
                      ),
                      prefix: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 9),
                        child: Text("+91|",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      labelText:"Phone Number",
                      contentPadding: EdgeInsets.symmetric(vertical: 17,horizontal: 21),
                      labelStyle: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(11)
                      )
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'enter the Phone Number Please';
                    }else{
                      return null;
                    }

                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FractionallySizedBox(
                widthFactor: .8,
                child: TextFormField(
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
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please enter the password';
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),

              SizedBox(
                height: 20,
              ),
              FractionallySizedBox(
                widthFactor: .8,
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      labelText:"Password Again",
                      contentPadding: EdgeInsets.symmetric(vertical: 17,horizontal: 26),
                      labelStyle: new TextStyle( fontWeight: FontWeight.bold, fontSize: 18.0),
                      border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(11)
                      )
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'please enter the password Agaain';
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              // FractionallySizedBox(
              //   widthFactor: .8,
              //   child: Container(
              //     height: 50,
              //     alignment:Alignment.centerRight,
              //     child: Text("Forgot Password?",style:TextStyle(
              //         fontSize: 18,
              //         fontWeight: FontWeight.w400),),
              //   ),
              // ),

              SizedBox(
                height: 25,
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
                    });


                    SharedPreferences sp= await SharedPreferences.getInstance();
                    sp.setString('email',userPost);
                    print(sp.getString("email"));


                    if(formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, "/success");
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text("Continue",style:TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              FractionallySizedBox(
                widthFactor: .8,
                child:InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "/");
                    },
                    child: Text('Already Have an Account?',textAlign: TextAlign.center)) ,

              )
              // FractionallySizedBox(
              //   widthFactor: .8,
              //   child: Container(
              //     height: 60,
              //     alignment:Alignment.center,
              //     child: Text("---------------- Or Login With -----------------",style:TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.w400),),
              //   ),
              // ),

              // FractionallySizedBox(
              //     widthFactor: .8,
              //     child:Container(
              //       alignment: Alignment.center,
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(image: AssetImage("assets/images/facebook.png"),width: 45,),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(image: AssetImage("assets/images/google.png"),width: 35,),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Image(image: AssetImage("assets/images/twitter.png"),width: 45,),
              //           )
              //         ],
              //
              //       ),
              //     )
              // ),
              // SizedBox(
              //   height: 15,
              // ),

              // FractionallySizedBox(
              //   widthFactor: .8,
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: Text('By clicking Login you agree with our terms. Learn how'
              //         'we process your data in our privacy policy and cookies policy',textAlign: TextAlign.center,
              //       style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black45,height: 1.5
              //       ),),
              //   ),
              // )

            ],
          ),
        ),
      ),

    );
  }
}
