import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();

  void add(String text) {}
}

class _listState extends State<list> {

  var list =[];
  void initState(){
     // TODO:implement initstate
    super.initState();

    list.add(10);
    print(list);
    list.addAll([10,20,30,40,50,60,70,80,90,100]);




  }



















  @override
  Widget build(BuildContext context) {
    return Text(list.toString());
  }
}

