import 'package:black/janu.dart';
import 'package:black/pami.dart';
import 'package:flutter/material.dart';


import 'dora.dart';
import 'srilatha.dart';



class botomnav extends StatefulWidget {
  const botomnav({Key? key}) : super(key: key);

  @override
  State<botomnav> createState() => _botomnavState();
}

class _botomnavState extends State<botomnav> {

  int _index = 0;

  var pages = [
    janu(),
    pami(),
    janu(),






  ];

  void _tap(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'dashhome'),
        ],
        currentIndex: _index,
        onTap: _tap,


      ),
    );
  }
}




















