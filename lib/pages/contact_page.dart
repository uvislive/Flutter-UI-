import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image(
          width: 150,
          image: AssetImage('assets/images/bookbird.png'),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Expanded(
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Contact Us",
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FractionallySizedBox(
                    widthFactor: .8,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "UserName",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 26),
                          labelStyle: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FractionallySizedBox(
                    widthFactor: .8,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email Address",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 26),
                          labelStyle: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11))),
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
                            child: Image.asset(
                              'assets/images/india.png',
                              height: 10.0,
                            ),
                          ),
                          prefix: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 9),
                            child: Text(
                              "+91|",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          labelText: "Phone Number",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 21),
                          labelStyle: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter the Phone Number Please';
                        } else {
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
                      minLines: 3,
                      maxLines: 4,
                      decoration: InputDecoration(
                          labelText: "Why Do you Contact Us?",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 17, horizontal: 26),
                          labelStyle: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FractionallySizedBox(
                    widthFactor: .8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Continue",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Follow Us On the",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context,"/register");
                    },
                    child: FractionallySizedBox(
                        widthFactor: .8,
                        child: Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(
                                  image:
                                      AssetImage("assets/images/facebook.png"),
                                  width: 45,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(
                                  image: AssetImage("assets/images/google.png"),
                                  width: 35,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(
                                  image:
                                      AssetImage("assets/images/twitter.png"),
                                  width: 45,
                                ),
                              )
                            ],
                          ),
                        )),
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
