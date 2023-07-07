import 'package:black/color.dart';
import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String textformfeilddisp = '';
  String num1 = '';
  String num2 = '';
  String selOperator ='';



  bool isOperatorClicked = false;
  late String res;
  TextEditingController txt = TextEditingController();
  var percent ='(value/total value)×100%.';
  pressoperator(String operator){
    selOperator =operator;
    isOperatorClicked =true;
    txt.text =operator;


  }

  void click(String butonvalue) {
    res = (textformfeilddisp + butonvalue).toString();

    setState(() {
      textformfeilddisp = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,

      appBar: AppBar(
        backgroundColor: Colors.black,

          title: Center(child: Text('Calculator', style: TextStyle(fontSize: 45),))),
           body: Column(
                children: [
                  SizedBox(height: 400,),
                TextFormField(controller: txt,style: TextStyle(color: Colors.black, fontSize: 25,),),
                SizedBox(height: 10,),


      SizedBox(height: 10,),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      ElevatedButton(
       onPressed: () {
         if (isOperatorClicked) {
           num2 += '1';
           txt.text = num2;
         } else {
           num1 += '1';
           txt.text = num1;
         }
         print('Num1 ${num1}');
         print('Num2 ${num2}');
       },
       style: ElevatedButton.styleFrom(
         primary: Colors.black, // Background color
       ),
       child: const Text('1', style: TextStyle(fontSize: 25),),),
    Padding(
    padding: const EdgeInsets.only(left: 6),
    child:ElevatedButton(
      onPressed: () {
       if (isOperatorClicked) {
         num2 += '2';
         txt.text = num2;
       } else {
         num1 += '2';
         txt.text = num1;
       }
       print('Num1 ${num1}');
       print('Num2 ${num2}');
      },
      style: ElevatedButton.styleFrom(
       primary: Colors.black, // Background color
      ),
      child: const Text('2', style: TextStyle(fontSize: 25),),),),
    Padding(
    padding: const EdgeInsets.only(left: 20),
    child: ElevatedButton(
    onPressed: () {
    if (isOperatorClicked) {
           num2 += '3';
           txt.text = num2;
    }      else {
           num1 += '3';
           txt.text = num1;
    }
           print('Num1 ${num1}');
           print('Num3 ${num2}');
    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('3',style:TextStyle(fontSize: 25),)),),
    Padding(
           padding: const EdgeInsets.only(left:10),
           child: ElevatedButton(
    onPressed: () {
           if (isOperatorClicked) {
           num2 += '4';
           txt.text = num2;
    }      else {
           num1 += '4';
           txt.text = num1;
    }
           print('Num1 ${num1}');
           print('Num4 ${num2}');
    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('4',style:TextStyle(fontSize: 25),)),),
    ],
    ),
           SizedBox(height: 10,),
    Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
    Padding(
           padding: const EdgeInsets.only(right: 10),
           child: ElevatedButton(
           onPressed: () {
           if (isOperatorClicked) {
           num2 += '5';
           txt.text = num2;
    } else {
           num1 += '5';
           txt.text = num1;
    }
           print('Num1 ${num1}');
           print('Num5 ${num2}');
    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('5',style:TextStyle(fontSize: 25),)),),
           SizedBox(height: 15,),
           Padding(
           padding: const EdgeInsets.only(right: 20),
               child: ElevatedButton(onPressed: () {
           if (isOperatorClicked) {
           num2 += '6';
           txt.text = num2;
    }      else {
           num1 += '6';
           txt.text = num1;
    }
           print('Num1 ${num1}');
           print('Num6 ${num2}');
    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
            child: Text('6',style:TextStyle(fontSize: 25),))),
    Padding(
           padding: const EdgeInsets.only(right: 10),
           child: ElevatedButton(onPressed: () {
           if (isOperatorClicked) {
           num2 += '7';
           txt.text = num2;
    }         else {
           num1 += '7';
            txt.text = num1;
    }
           print('Num1 ${num1}');
           print('Num7 ${num2}');
    },
           style: ElevatedButton.styleFrom(
            primary: Colors.black, // Background color
        ),

           child: Text('7',style:TextStyle(fontSize: 25),))
    ),
    Padding(
    padding: const EdgeInsets.only(right: 15),
           child: ElevatedButton(onPressed: () {
           if (isOperatorClicked) {
           num2 += '8';
           txt.text = num2;
    }          else {
           num1 += '8';
           txt.text = num1;
    }
           print('Num1 ${num1}');
           print('Num8 ${num2}');
    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('8',style:TextStyle(fontSize: 25),))
    ),
    ],
    ),
           SizedBox(height: 10,),
    Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
    Padding(
    padding: const EdgeInsets.only(right: 10),
           child: ElevatedButton(onPressed: () {
           if (isOperatorClicked) {
           num2 += '9';
           txt.text = num2;
    }          else {
           num1 += '9';
           txt.text = num1;
    }
           print('Num1 ${num1}');
           print('Num9 ${num2}');
    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('9',style:TextStyle(fontSize: 25),))
    ),
    Padding(
    padding: const EdgeInsets.only(right: 20),
           child: ElevatedButton(onPressed: () {
           if (isOperatorClicked) {
           num2 += '0';
           txt.text = num2;

    }          else {
           num1 += '0';
           txt.text = num1;
    }
           print('Num1 ${num1}');
           print('Num0 ${num2}');
    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('0',style:TextStyle(fontSize: 25),))
    ),
    Padding(
    padding: const EdgeInsets.only(right: 10),
           child: ElevatedButton(onPressed: () {
           isOperatorClicked = true;
           selOperator ='+';
           txt.text ='+';


    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('+',style:TextStyle(fontSize: 25),))),

    Padding(
    padding: const EdgeInsets.only(right: 15),
           child: ElevatedButton(onPressed: () {
     ;
           isOperatorClicked = true;
           selOperator ='-';
           txt.text ='-';



    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('-',style:TextStyle(fontSize: 25),))),

    ],
    ),
           SizedBox(height: 10,),
    Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
    Padding(
    padding: const EdgeInsets.only(left: 10),
           child: ElevatedButton(onPressed: () {

           isOperatorClicked = true;
           selOperator ='*';
           txt.text ='*';


    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('*',style:TextStyle(fontSize: 25),))),


    Padding(
           padding: const EdgeInsets.only(right: 10),
           child: ElevatedButton(onPressed: () {

           isOperatorClicked = true;
           selOperator ='/';
           txt.text ='/';
    },
           style: ElevatedButton.styleFrom(
           primary: Colors.black, // Background color
        ),
           child: Text('/',style:TextStyle(fontSize: 25),))),
      Padding(
           padding: const EdgeInsets.only(right: 15),
           child: ElevatedButton(onPressed: () {
            double value =double.parse(txt.text);
            txt.text =(value/100).toString();
            num1 =txt.text;
            num2 ='';
            isOperatorClicked =false;
            selOperator ='';
            print('firstnum:${num1}');
            print('secondnum:${num2}');



         }, style: ElevatedButton.styleFrom(
             primary: Colors.black, // Background color
           ),
           child: Text('%',style:TextStyle(fontSize: 25),))),
      Padding(
           padding: const EdgeInsets.only(right: 15),
           child: ElevatedButton(onPressed: () {
           double firstNum = double.parse(num1);
           double SecNum   = double.parse(num2);
           double res =0;
           if(selOperator == '+')

         {
           res = firstNum + SecNum;
         }
           else if (selOperator =='-')
           {
             res = firstNum - SecNum;
           }
           else if (selOperator =='*')
           {
             res =firstNum*SecNum;
           }
           else if (selOperator =='/')
           {
             res =firstNum/SecNum;
           }
           txt.text = res.toString();
           isOperatorClicked =false;
           num2 ='';
           num1 =txt.text;


       },
           style: ElevatedButton.styleFrom(
             primary: Colors.black, // Background color
           ),
           child: Text('=',style:TextStyle(fontSize: 25),))),

    ],
    ),
    SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: ElevatedButton(onPressed: () {

                            isOperatorClicked = true;
                            selOperator ='.';
                            txt.text ='.';
                            },style: ElevatedButton.styleFrom(
                                primary: Colors.black, // Background color
                              ),
                              child: Text('.',style:TextStyle(fontSize: 20),))),
                      Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ElevatedButton(onPressed: () {
                            double value = double.parse(txt.text);
                            if(value.isNegative){
                              txt.text =value.abs().toString();
                              }else{
                              txt.text =(value *-1).toString();

                            }




                          },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black, // Background color
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('+/-',style:TextStyle(fontSize: 12),),
                              ))),
                      Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: ElevatedButton(onPressed: ()
                             {
                             isOperatorClicked = false;
                                 selOperator ='';
                                 txt.text ='';
                              print('num1: ${num1}');
                                print('num2:${num2}');

                               },style: ElevatedButton.styleFrom(
                                primary: Colors.black, // Background color
                           ),
                              child: Text(' DEL',style:TextStyle(fontSize: 20),))),
                      Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: ElevatedButton(onPressed: () {
                            num1 = '';
                            num2 = '';


                           isOperatorClicked = false;
                           selOperator ='';
                           txt.text ='';
                          print('num1: ${num1}');
                          print('num2:${num2}');

                            },
                           style: ElevatedButton.styleFrom(
                            primary: Colors.black, // Background color
                          ),
                              child: Text('AC',style:TextStyle(fontSize: 20),))),

                    ],
                  ),
                ]
           )
         );
  }
}
