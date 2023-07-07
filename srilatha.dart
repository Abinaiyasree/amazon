import 'package:black/botomnav.dart';
import 'package:flutter/material.dart';



class srilatha extends StatelessWidget {
  const srilatha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('srees world'),
        actions: [
          Text('gt'),
        ],
      ),
      body: Column(

        children: [
          SizedBox(
            height: 20,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(

                  children: [
                    Image.asset("assets/panda.jpg"),

                    Text('abcd'),


                  ],

                ),
              ),
              Container(
                height: 200,
                width: 190,
                decoration: BoxDecoration(
                  border: Border.all(),


                ),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Icon(Icons.abc),
                    Icon(Icons.camera),
                    Text('efgh'),
                  ],

                ),

              ),

            ],
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Image.asset('assets/panda.jpg')),

                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),

                      Text('abcs'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('adhs'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('efgh'),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),




                  Column(
                      children:  [
                        Container(
                          height: 100,
                          width: 150,
                          child: Image.asset('assets/panda.jpg'),
                        ),
                        Text("hi")
                      ]),
                  SizedBox(
                    height: 10,
                  ),





                ],
              ),

            ),
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 30,
          ),


          Container(height: 100,
              child: Image.asset("assets/panda.jpg")),


          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const botomnav()),
                );



              }, child: Text('login')),

        ],
      ),





      //     body: Column(
      //       children: [
      //         Row(
      //           children: [
      //             Container(
      //               height: 300,
      //               width: 200,
      //               decoration: BoxDecoration(
      //                 border: Border.all(),
      //
      //               ),
      //               child: Column(
      //                 children: [
      //                   Image.asset('assets/building.png'),
      //                   Text('abcd'),
      //                 ],
      //               ),
      //
      //             ),
      //             Container(
      //               height: 300,
      //               width: 200,
      //               decoration: BoxDecoration(
      //                 border: Border.all(),
      //               ),
      //               child: Column(
      //                 children: [
      //                   Image.asset('assets/building.png'),
      //                   Text('abcdef'),
      //                 ],
      //               ),
      //             ),
      //         Container(
      //           height: 300,
      //           width: 500,
      //           decoration: BoxDecoration(
      //             border: Border.all(),
      //           ),
      //           child: Row(
      //             children: [
      //
      //
      //
      //             ]
      //         ,
      //         )
      //         ),
      //
      //
      // ]
    );
  }
}








class Sara extends StatefulWidget {
  const Sara({Key? key}) : super(key: key);

  @override
  State<Sara> createState() => _SaraState();
}

class _SaraState extends State<Sara> {

  int a = 0 ;

  final pages = [
    srilatha(),
    Container(
      height: 100,
      width: 100,
      color: Colors.cyanAccent,
      child: Image.asset('assets/panda.jpg'),

    ),



  ];

  void _tap(b)
  {
    setState(() {
      a = b;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('srees world'),
        actions: [
          Text('gt'),
        ],
      ),
      body: Column(

        children: [
          SizedBox(
            height: 20,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(

                  children: [
                    Image.asset("assets/building.png"),

                    Text('abcd'),


                  ],

                ),
              ),
              Container(
                height: 200,
                width: 190,
                decoration: BoxDecoration(
                  border: Border.all(),


                ),
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    Icon(Icons.abc),
                    Icon(Icons.camera),
                    Text('efgh'),
                  ],

                ),

              ),

            ],
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Image.asset('assets/building.png')),

                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),

                      Text('abcs'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('adhs'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('efgh'),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),




                  Column(
                      children:  [
                        Container(
                          height: 100,
                          width: 150,
                          child: Image.asset('assets/building.png'),
                        ),
                        Text("hi")
                      ]),
                  SizedBox(
                    height: 10,
                  ),





                ],
              ),

            ),
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 30,
          ),


          GestureDetector(
            onTap: ()
            {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const srilatha()),
              );
            },
            child: Container(height: 100,
                child: Image.asset("assets/building.png")),
          ),


          ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const srilatha()),
                );



              }, child: Text('login')),

        ],
      ),





      //     body: Column(
      //       children: [
      //         Row(
      //           children: [
      //             Container(
      //               height: 300,
      //               width: 200,
      //               decoration: BoxDecoration(
      //                 border: Border.all(),
      //
      //               ),
      //               child: Column(
      //                 children: [
      //                   Image.asset('assets/building.png'),
      //                   Text('abcd'),
      //                 ],
      //               ),
      //
      //             ),
      //             Container(
      //               height: 300,
      //               width: 200,
      //               decoration: BoxDecoration(
      //                 border: Border.all(),
      //               ),
      //               child: Column(
      //                 children: [
      //                   Image.asset('assets/building.png'),
      //                   Text('abcdef'),
      //                 ],
      //               ),
      //             ),
      //         Container(
      //           height: 300,
      //           width: 500,
      //           decoration: BoxDecoration(
      //             border: Border.all(),
      //           ),
      //           child: Row(
      //             children: [
      //
      //
      //
      //             ]
      //         ,
      //         )
      //         ),
      //
      //
      // ]
    );
  }
}
















