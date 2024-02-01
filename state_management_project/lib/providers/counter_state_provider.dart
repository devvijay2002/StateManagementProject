import 'package:flutter/cupertino.dart';

class CounterStateProvider with ChangeNotifier{

  int _count = 0;
  int get count => _count;

  void increamentCount(){
      _count++;
      notifyListeners();
  }
  void decreamentCount(){
      _count--;
      notifyListeners();
  }
}