import 'package:flutter/material.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alexa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                          elevation: 3,
                          title: Text("Error message"),
                          content: Text(
                              "this error is occuring due to the internet connection"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("click me"),
                            )
                          ],
                        ));
              },
              child: Text("Show dialogue"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: ()async {
 bool result= await showDialog(
                    context: context,
                    barrierDismissible: false,
                    
                    builder: (context) => AlertDialog(
                      elevation: 1,
                      title: Text("Error message"),
                      shape:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      content: Text(
                          "this error is occuring due to the internet connection"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Text("yes"),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                          child: Text('No'),
                        )
                      ],
                    ));
          print(result);
              },
              child: Text("Show dialogue"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                SnackBar snackBar =SnackBar(
                  content: Text("how is your mood ?"),
                  duration: Duration(seconds: 1),
                  backgroundColor: Colors.green,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("SnackBar"),
            ),
            SizedBox(
              height: 20,
            ),



            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(context: context,

                    builder: (context)=>Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       ListTile(
                         leading:Icon(Icons.settings),
                         title: Text("Settings"),
                       ),

                       ListTile(
                         leading:Icon(Icons.settings),
                         title: Text("Settings"),
                       ),

                       ListTile(
                         leading:Icon(Icons.settings),
                         title: Text("Settings"),
                       ),
                       ListTile(
                         leading:Icon(Icons.settings),
                         title: Text("Settings"),
                       )
                     ],
                  ),
                ));
              },
              child: Text("Show Scaffold snackbar"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Show dialogue"),
            ),
          ],
        ),
      ),
    );
  }
}
