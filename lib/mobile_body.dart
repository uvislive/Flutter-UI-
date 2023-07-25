
import 'package:flutter/material.dart';
class MyMobileBody extends StatefulWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        title: Text("Mobile"),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
            aspectRatio: 16/9,
        child: Container(
            color: Colors.deepPurple,
        ),
      ),
          ),
          Expanded(
            child: ListView.builder(itemCount:8,itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.deepPurple,
                  height: 120,
                ),
              );
            },

            ),
          )
        ],
      ),
    );
  }
}
