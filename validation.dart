import 'package:flutter/material.dart';

class validation extends StatefulWidget {
  const validation({Key? key}) : super(key: key);

  @override
  State<validation> createState() => _validationState();
}

class _validationState extends State<validation> {
  final _key =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:_key,
        child: Column(
          children: [
            SizedBox(height: 50,),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'user name';
                }

              },
            ),
            TextFormField(
              validator: (val)
              {
                if (val!.length <=6 || val.isEmpty) {
                  return 'password';
                }

              },
            ),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate())
               {
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('login')));
               }
              },child: Text('login'),
            ),
         ],
        ),
      ),
    );
  }
}
