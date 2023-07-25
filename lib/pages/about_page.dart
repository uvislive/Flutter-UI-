import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "What Exactly is BookBird? ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                      "A BookBird is a medium for recording information in the form of writing or images, typically composed of many pages (made of papyrus, parchment, vellum, or paper) bound together and protected by a cover. In the history of hand-held physical supports for extended written compositions or records, each side of a leaf is a pagee written on several scrolls and each scroll had to be identified by the book it contained. Each part of Aristotle's Physics is called a book. In an unrestricted sense, a book is the compositional whole of which such sections, whether called books or chapters or parts, are parts.    ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*.8,
                  child: Text("Founder Of BookBird :",style:TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(
                  height: 70,
                ),
                // FractionallySizedBox(
                //   widthFactor: .8,
                //   child:ListTile(
                //     leading: CircleAvatar(minRadius: 30),
                //     title:  Text("uvislive:",style:TextStyle(
                //         fontSize: 30,
                //         fontWeight: FontWeight.bold
                //     ),),
                //     subtitle: Text("ceo"),
                //   )
                // )
                Text("how are you"),
                SizedBox(
                  height: 70,
                ),
                Text("more you go the downstreet")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
