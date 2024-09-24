import 'package:flutter/material.dart';

class Bottomnavigationcontroller with ChangeNotifier{
  int currentIndex=0;

  void onTap(int index){
    currentIndex=index;
    notifyListeners();

  }
}