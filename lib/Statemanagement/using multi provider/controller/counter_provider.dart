import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Statemanagement/using%20multi%20provider/model/counter.dart';
class CounterProvider1 extends ChangeNotifier{
  final Counter1 _counter = Counter1(0);
  Counter1 get counter => _counter;

  void increment(){
    _counter.count++;
    notifyListeners();
  }

  void decrement(){
    _counter.count--;
    notifyListeners();
  }
}