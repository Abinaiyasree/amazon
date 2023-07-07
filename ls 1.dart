import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// class ls1 extends StatefulWidget {
//   const ls1({Key? key}) : super(key: key);
//
//   @override
//   State<ls1> createState() => _ls1State();
// }
//
// class _ls1State extends State<ls1> {
//
//   // main(){
//   //   print([10,8,5].reduce(max));
//   //   print([10,8,5].reduce(min));
//   // }
//
//   int value1 =10;
//   int value2 =8;
//   int value3 =5;
//   var list =[10,8,5];
//   int greatest =0;
//
//
//   @override
//   void initstate(){
//     //TODO :implement initstate
//     super.initState();
//     list =[10,8,5];
//
//     var a = list.reduce(max);
//     var b = list.reduce(min);
//    // var b = list.sort();
//
//
//
//     if (value2 > value3);
//       {
//         if (value3 >value1);
//           {
//             (value2 >value1);
//
//             {
//               if(value1>value2);
//
//                 else
//                   greatest =value1;
//               }
//             };
//         {
//           greatest=value3;
//           }
//       }
//     print('greatest ${greatest}');
//     print('greatest ${a}');
//     print('greatest ${b}');
//
// // return Scaffold(
// //   body: Text('$a'),
// // )
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Text('$a');
//   }
// }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }



class sam extends StatefulWidget {
  const sam({Key? key}) : super(key: key);

  @override
  State<sam> createState() => _samState();
}

class _samState extends State<sam> {


 void a()
{
  var list =[10,8,5];


  var a = list.reduce(max);
  var b = list.reduce(min);
  var c =list.sort();

  print('$a');
  print('$b');

}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}



