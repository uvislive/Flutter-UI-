import 'package:flutter/material.dart';
import 'package:instacart/Counter_block.dart';
import 'package:instacart/Counter_event.dart';

class MyBlock extends StatefulWidget {
  const MyBlock({Key? key}) : super(key: key);

  @override
  State<MyBlock> createState() => _MyBlockState();
}

class _MyBlockState extends State<MyBlock> {
  final bloc = CounterBlock();
  var num = 33;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: bloc.counter,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            print("snapshot is the $snapshot");
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "${snapshot.data}",
                  style: TextStyle(fontSize: 66),
                ),
                // SizedBox(
                //   height: 50,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                          onPressed: ()=>bloc.counterEventSink.add(IncreamentEvent()),
                          tooltip: "Increament",
                          child: Icon(Icons.exposure_plus_1)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                          onPressed: ()=>bloc.counterEventSink.add(DecreamentEvent()),
                          tooltip: 'Decreament',
                          child: Icon(Icons.exposure_minus_1)),
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
