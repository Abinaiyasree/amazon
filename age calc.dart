import 'package:flutter/material.dart';

class agecalc extends StatefulWidget {
  const agecalc({Key? key}) : super(key: key);

  @override
  State<agecalc> createState() => _agecalcState();
}

class _agecalcState extends State<agecalc> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2= TextEditingController();
  var birthyear =[];
  var birthdate =[];
  var Birthtime =[];
  var currentyear=[];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Age calculator')),


      ),

      body: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: TextFormField(),

          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Text('Age',style: TextStyle(fontSize: 25),),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: TextFormField(),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Text('Date Of Birth',style: TextStyle(fontSize: 25),),
              ),
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text('calculate')),




        ],
      ),

    );
  }
}

