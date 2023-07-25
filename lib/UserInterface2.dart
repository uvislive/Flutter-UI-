import 'package:flutter/material.dart';

class UserInterface extends StatelessWidget {
  const UserInterface({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isChecked = false;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black26;
    }


    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: FractionallySizedBox(
          widthFactor: 1,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image(
                  image: AssetImage('assets/images/logo.jpg'),
                  width: 70,
                ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                  children: [
                  Text("DESIGN",style: TextStyle(color: Colors.black,fontSize: 33,fontWeight: FontWeight.bold),),
                    Text("PARTICLE",style:TextStyle(letterSpacing: 4,fontSize: 13,fontWeight: FontWeight.bold,color:Colors.black87),)
                  ],
                  )
                ],
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(32, 15 , 32, 0),
                child: TextField(
                  decoration: InputDecoration(
                    // border: OutlineInputBorder()
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 13.5,fontWeight: FontWeight.w600),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                    // hintText: AutofillHints.username
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(32, 21 , 32, 0),
                child: TextField(
                  decoration: InputDecoration(
                    // border: OutlineInputBorder()
                    hintText: "UserName",
                    hintStyle: TextStyle(fontSize: 13.5,fontWeight: FontWeight.w600),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                    // hintText: AutofillHints.username
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(32, 21 , 32, 0),
                child: TextField(
                  decoration: InputDecoration(
                    // border: OutlineInputBorder()
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 13.5,fontWeight: FontWeight.w600),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                    // hintText: AutofillHints.username
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(32, 21 , 32, 0),
                child: TextField(
                  decoration: InputDecoration(
                    // border: OutlineInputBorder()
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 13.5,fontWeight: FontWeight.w600),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                    // hintText: AutofillHints.username
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(32, 21 , 32, 0),
                child: TextField(
                  decoration: InputDecoration(
                    // border: OutlineInputBorder()
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(fontSize: 13.5,fontWeight: FontWeight.w600),
                    contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),
                    // hintText: AutofillHints.username
                  ),
                ),
              ),

              SizedBox(
                height: 2,
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20,10 , 25, 3),
                child: Row(

                  children: [

                    //  check box here
                    Checkbox(
                        checkColor: Colors.black,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,

                        onChanged: (bool? value) {

                        }
                    ),
                    Text("I agree with terms and conditions"),
                  ],
                ),
              ),
              TextButton(
                  onPressed: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(39, 31, 68, 1),
                        borderRadius: BorderRadius.circular(2.5)
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 11.5, horizontal: 145),

                    child: Text("Sign up",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
              ),
              SizedBox(
                height: 10,
              ),
              Text("Already Have a Account? Sign in",style: TextStyle(fontSize: 16,decoration: TextDecoration.underline),),
              SizedBox(
                height: 25,
              ),
              Text("Term of Use.Privacy Policy",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),


            ],
          ),
        ),
      ),
    );
  }
}
