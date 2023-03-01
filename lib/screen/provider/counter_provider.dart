import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier
{
  int i=0;

  void increment()
  {
    i++;
    notifyListeners();
  }
  void decrement()
  {
    i--;
    notifyListeners();
  }
  void mul()
  {
    i=i*2;
    notifyListeners();
  }
  void mul3()
  {
    i=i*3;
    notifyListeners();
  }
  void mul4()
  {
    i=i*4;
    notifyListeners();
  }
}