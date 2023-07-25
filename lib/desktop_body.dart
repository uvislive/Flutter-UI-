import 'package:flutter/material.dart';


class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Row(
        children: [
          Expanded(
            child: Column(
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
          ),
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 400,
                    color: Colors.deepPurple,
                    child: ListView.builder(itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          color: Colors.red,
                        ),
                      );
                    },
                    itemCount: 10,),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
