import 'dart:async';

import 'package:flutter/cupertino.dart';

class TimerProvider with ChangeNotifier{
  late Timer _timer;
  int _hour = 0;
  int _minute = 0;
  int _second = 0;
  bool _startEnable = true;
  bool _stopEnable = true;
  bool _continueEnable = false;
  


  int get hour => _hour;
  int get minute => _minute;
  int get second => _second;

  bool get startEnable => _startEnable;
  bool get stopEnable => _stopEnable;
  bool get continueEnable => _continueEnable;

  void startTimer(){
    _hour = 0;
    _minute = 0;
    _second = 0;
    _startEnable = false;
    _stopEnable = true;
    _continueEnable = false;

    _timer = Timer.periodic(Duration(seconds: 1),(timer) {
      if(_second <59){
        _second++;
      }
      else if(_second == 59){
        _second = 0;
      }if(_minute == 59){
        _hour++;
        _minute = 0;
      }else {
        _minute++;
      }
     });
  }

}