import 'dart:developer';

abstract class CounterEvent{}

class IncreamentEvent extends CounterEvent{}


class DecreamentEvent extends CounterEvent{}


class TwoIncreament extends CounterEvent{}