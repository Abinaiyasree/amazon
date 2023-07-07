import 'package:flutter/material.dart';

class ls2 extends StatefulWidget {
  const ls2({Key? key}) : super(key: key);

  @override
  State<ls2> createState() => _ls2State();
}

class _ls2State extends State<ls2> {

  int value1 = 20;
  int value2 = 10;
  int value3 = 20;

  var list = [];
  int lessthan = 0;

  @override
  void initState() {
    //TODO:implement initstate
    super.initState();
    if (value1 < value2) {
      if (value1 < value3);
      {
        (value2 < value3);
      }
    }
    else {
      if (value2 < value3) {
        lessthan = value1;
      }
      else
      {
        lessthan = value3;
      }
    }

    print(lessthan);
  }






@override
  Widget build(BuildContext context) {
    return Text(list.toString());
  }
}

