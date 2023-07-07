import 'package:black/color.dart';
import 'package:black/dora.dart';
import 'package:black/model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class janu extends StatefulWidget {
  const janu({Key? key}) : super(key: key);

  @override
  State<janu> createState() => _januState();
}

class _januState extends State<janu> {
  get itemIndex => null;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: cyacc,
        title: Container(
          height: 40,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.camera),
              suffixIcon: Icon(Icons.search),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white),

              ),
              hintText: 'search amazon in'




            ),


          ),
        ),
    ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              //width: 400,
              color: dww,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.location_on),
                  ),
                  SizedBox(width: 10,),
                  Text('select a location to see the product availability'),


                ],

              ),
            ),

            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: Model1.length,
                  itemBuilder: (BuildContext context,index)
                  {
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const  dora()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                               Container(
                              height:60,
                                width: 70,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Model1[index].image),
                                    fit: BoxFit.fill
                                  ),
                                  shape: BoxShape.circle,
                                ),
                            ),
                                Text('hello'),

                          ],
                        ),
                      ),
                    );


                  }
              ),


            ),

            CarouselSlider.builder(
                options: CarouselOptions(
                    height: 200,
                    aspectRatio: 2/2,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.linear,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,

                    scrollDirection: Axis.horizontal,
                ),
                    itemCount:Model1.length,
                    itemBuilder: (BuildContext context,int itemindex,int pageviewIndex){
                  return Container(
                  height: 100,
                    width: 500,
                    decoration: BoxDecoration(
                      color: cyacc,
                      image: DecorationImage(
                        image: AssetImage(Model1[itemindex].image),
                        fit: BoxFit.cover,

                      ),

                    ),
                  );
            }








            ),

            Container(
              height: 250,
              color: Colors.black12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Model1.length,
                    itemBuilder: (BuildContext context,index)
                    {
                      return Column(
                        children: [
                          Container(
                              height:180,
                              width:100,
                             decoration: BoxDecoration(
                               image:DecorationImage(
                                 image: AssetImage(Model1[index].image),
                               ),


                             ),
                             // child: Image.asset('assets/panda.jpg')
                          ),
                          Text('hello'),

                        ],
                      );


                    }
                ),
              ),


            ),
            SizedBox(height: 50,),
            Container(
              height: 500,
              //color: pink,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 1.5/ 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount:Model1.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      children: [
                        Container(
                          height:200,
                          width:200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Model1[index].image),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Text('hi')

                      ],
                    );

                    //   Container(
                    //     height: 100,
                    //     width: 200,
                    //     decoration: BoxDecoration(
                    //       color: Colors.grey,
                    //       image: DecorationImage(
                    //         fit: BoxFit.cover,
                    //         image: AssetImage('Model1[itemindex].image')
                    //
                    //       ),
                    //
                    //
                    //
                    //     ),
                    //
                    //   child: Image.asset(Model1[index].image),
                    //
                    //
                    // );
                  }),
            ),

          ],
        ),
      ),


                  // child: Image.asset("assets/panda.jpg")
                );




              }









}
