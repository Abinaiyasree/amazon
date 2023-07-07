import 'package:black/list.dart';
import 'package:flutter/material.dart';
class lst1 extends StatefulWidget {
  const lst1({Key? key}) : super(key: key);

  @override
  State<lst1> createState() => _lst1State();

}

class _lst1State extends State<lst1> {
  List a=[];

  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          TextFormField(
            controller: text1,

          ),

          ElevatedButton(onPressed: (){
          setState(() {
           a.add(text1.text);
          });
          },
              child: Text('ok')),
          TextFormField(
            controller: text2,
          ),
          ElevatedButton(onPressed: (){



            var s = [10,20,30];


            var fs = s.reduce((value, element) => value > element ? value : element);
            var fd = s.reduce((value, element) => value < element ? value : element);
            var fdd = s.sort();

            text2.text = fd.toString();

          }, child: Text('greater')),

          Expanded(
            child: ListView.builder(
              itemCount: a.length,
                itemBuilder: (BuildContext context,int itemIndex,) {
                  return Text(a[itemIndex]);

                },
      ),
          ),


      ]
    ),
    );
  }
}
String? a;
