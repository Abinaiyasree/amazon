import 'package:flutter/material.dart';

import 'botomnav.dart';

class black extends StatelessWidget {
  const black({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          height: double.infinity,
          width: double.infinity,

          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(1),
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage('assets/panda.jpg'),
            ),


          ),



          child: ListView(

              children: [




                SizedBox(height: 20,),
                Center(
                  child: Container(
                    child: Center(child: Text('panda')),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/panda.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Text('INNOVATION SOFTWARE'),
                SizedBox(height: 20,),
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(child: Text('admin')),
                      VerticalDivider(
    width: 5,color: Colors.black,

    ),
                  Text('user'),





                    ],








                  )

                  ,

                ),
                SizedBox(height: 20,),
                Container(
                  height: 230,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [

                      Text('victoria',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'user name';
                            }

                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'enter'

                          ),
                        ),
                      ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (val) {
                                if (val!.length <=6 || val.isEmpty) {
                                  return 'please enter the more than 6 char';
                                }

                              },
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: Icon(Icons.lock),
                                hintText: 'password',



                    ),
                  ),

                          ),


                        ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const botomnav()),
                          );
                        },
                        child: Container(

                          height: 40,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            shape: BoxShape.circle,
                            color: Colors.greenAccent,
                          ),
                          child:  Center(child: Text('login')),

                        ),
                      ),









                    ],



                    ),

                ),









              ],


    ),
        )

    );


  }
}


