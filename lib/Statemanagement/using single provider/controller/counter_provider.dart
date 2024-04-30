import 'package:flutter/material.dart';
import 'package:flutter_october_vs/Statemanagement/using%20single%20provider/model/counter.dart';

class CounterProvider extends ChangeNotifier{
  final Counter _counter = Counter(0);
  Counter get counter => _counter;

  void increment(){
    _counter.count++;
    notifyListeners();
  }

  void decrement(){
    _counter.count--;
    notifyListeners();
  }
}