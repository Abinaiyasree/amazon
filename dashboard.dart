import 'package:flutter/material.dart';
import 'package:black/dora.dart';
import 'package:black/pami.dart';
import 'srilatha.dart';



class botomnav extends StatefulWidget {
  const botomnav({Key? key}) : super(key: key);

  @override
  State<botomnav> createState() => _botomnavState();
}

class _botomnavState extends State<botomnav> {

  int _index = 0;

  var pages = [
    srilatha(),
    pami(),
    dora(),






  ];

  void _tap(index) {
    setState(() {
      _index = index;
    });
    GestureDetector(
     onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const  srilatha()),
      );
    },

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[_index],

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'profile'),
        ],
        currentIndex: _index,
        onTap: _tap,




      ),

    );
  }
}
