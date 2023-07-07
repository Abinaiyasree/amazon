import 'package:flutter/material.dart';


class dddddd extends StatefulWidget {
  const dddddd({Key? key}) : super(key: key);

  @override
  State<dddddd> createState() => _ddddddState();
}

class _ddddddState extends State<dddddd> {

  String textdisp = '';
  late String res;

  void clk(String btnValue)
  {
    res = (textdisp + btnValue).toString();

    setState(() {

      textdisp = res ;
    });
  }

  Widget btn(btnValue)
  {
    return ElevatedButton(onPressed: (){
      clk(btnValue);
    }, child: Text('$btnValue'));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 100,),
          Text('$textdisp'),

         Row(
           children: [
             btn('7'),
             btn('8'),
             btn('9'),
             btn('0'),
           ],
         ),
          Row(
            children: [
              btn('1'),
              btn('2'),
              btn('9'),
              btn('0'),
            ],
          ),
          Row(
            children: [
              btn('7'),
              btn('8'),
              btn('9'),
              btn('0'),
            ],
          ),
          Row(
            children: [
              btn('7'),
              btn('8'),
              btn('9'),
              btn('0'),
            ],
          ),


        ],
      ) ,
    );
  }
}
