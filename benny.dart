import 'package:flutter/material.dart';
class benny extends StatefulWidget {
  const benny({Key? key}) : super(key: key);

  @override
  State<benny> createState() => _bennyState();
}

class _bennyState extends State<benny> {
  @override
  Widget build(BuildContext context) {
    TextEditingController Text1 =TextEditingController();
    TextEditingController Text2 =TextEditingController();

    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 40,),
          TextFormField(
            controller: Text1,
          ),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            Text2.text =Text1.text;

          }, child: Text('ok')),
          SizedBox(height: 40,),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),

            ),
            child: TextFormField(
              controller: Text2,
            ),
          ),



        ],

      ),







    );
  }
}



