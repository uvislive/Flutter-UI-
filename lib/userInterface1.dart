import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: UserInterfaceOne(), // Scaffold
    ); // MaterialApp
  }
}

class UserInterfaceOne extends StatefulWidget {
  UserInterfaceOne({super.key});

  @override
  State<UserInterfaceOne> createState() => _UserInterfaceOneState();
}

class _UserInterfaceOneState extends State<UserInterfaceOne> {
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
    return Colors.black54;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // AppBar
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 55,),
            //Images
            Image.asset('assets/images/logo.jpg', height: 89),
            //Design heading
            Text("DESIGN",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),
            ),
            //Particle sub title
            Text("PARTICLE",
              style: TextStyle(fontSize: 16,
                  letterSpacing: 9
              ),
            ),

            //  form start here
            //  Username
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 38, 32, 0),
              child: TextField(
                decoration: InputDecoration(
                  // border: OutlineInputBorder()
                  hintText: "Username",
                  hintStyle: TextStyle(
                      fontSize: 13.5, fontWeight: FontWeight.w600),
                  contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),


                  // hintText: AutofillHints.username
                ),
              ),
            ),

            //Password
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 21, 32, 0),
              child: TextField(
                decoration: InputDecoration(
                  // border: OutlineInputBorder()
                  hintText: "Password",
                  hintStyle: TextStyle(
                      fontSize: 13.5, fontWeight: FontWeight.w600),
                  contentPadding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0),


                  // hintText: AutofillHints.username
                ),
              ),
            ),

            //remember me
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 21, 25, 32),
              child: Row(

                children: [

                  //  check box here
                  Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked,

                      onChanged: (bool? value) {
                        setState(
                                () {
                              isChecked = value!;
                            }
                        );
                      }
                  ),
                  Text("Remember me"),
                  Expanded(child: SizedBox()),
                  Text("Forget Password")
                ],
              ),
            ),

            //Login Button
            TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(39, 31, 68, 1),
                      borderRadius: BorderRadius.circular(2.5)
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 11.5, horizontal: 145),

                  child: Text("Login",
                    style: TextStyle(color: Colors.white),
                  ),
                )
            ),

            //sign up Button
            TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2.5),
                      border: Border.all(color: Colors.black45)
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 138),

                  child: Text("Sign up",
                    style: TextStyle(color: Color.fromRGBO(39, 31, 68, 1)),
                  ),
                )
            ),
            SizedBox(height: 50,),

            //  form end here

            //Terms of
            Text("Term of use. Privacy policy")


          ],
        ),
      ),

    );
  }
}