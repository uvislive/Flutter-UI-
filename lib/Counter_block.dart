import 'dart:async';

import 'package:instacart/Counter_event.dart';

class CounterBlock{
  int _counter=0;

  final _counterStateController=StreamController<int>();

  StreamSink<int>get _incounter=> _counterStateController.sink;
  Stream<int>get counter=> _counterStateController.stream;

  final _counterEventController= StreamController<CounterEvent>();

  Sink<CounterEvent>get counterEventSink=>_counterEventController.sink;



  CounterBlock(){
    _counterEventController.stream.listen(myEventToState);
  }


  void myEventToState(CounterEvent event){
    if(event is IncreamentEvent){
      _counter++;
      _incounter.add(_counter);
    }
    else{
      _counter--;
      _incounter.add(_counter);
    }
  }




}