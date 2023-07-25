import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();

  // var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            child: SizedBox(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('SIGN UP',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Container( height: 30,width: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),),color: Colors.blue,),
                          padding: EdgeInsets.only(left: 10),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text('Mobile' )),
                        ),
                        Expanded(
                          flex:2,
                          child:TextField(decoration: null,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Container( height: 30,width: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),),color: Colors.blue,),
                          padding: EdgeInsets.only(left: 10),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text('Mobile' )),
                        ),
                        Expanded(
                          flex:2,
                          child:TextField(decoration: null,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Container( height: 30,width: 60,
                          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),),color: Colors.blue,),
                          padding: EdgeInsets.only(left: 10),
                          child: Align(
                              alignment: Alignment.center,
                              child: Text('Mobile' )),
                        ),
                        Expanded(
                          flex:2,
                          child:TextField(decoration: null,),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 350,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(shape: StadiumBorder(),backgroundColor: Colors.deepPurple),
                      onPressed: () {

                      },
                      child: const Text(
                        'Sign In',  style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( 'Already have an account?'),
                          TextButton(
                            onPressed: (){},

                            child: Text('Sign in.',style: TextStyle(color: Colors.deepPurple),),)
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
