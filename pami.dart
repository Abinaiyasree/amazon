

import 'package:black/color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'model.dart';

class pami extends StatefulWidget {
  const pami({Key? key}) : super(key: key);

  @override
  State<pami> createState() => _pamiState();
}

class _pamiState extends State<pami> {
  get buildcontext => null;

  get assets => null;

  get itemIndex => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:cyacc ,

        title: Container(
          decoration: BoxDecoration(
            color: white,

            borderRadius: BorderRadius.circular(10),
          ),
          height: 40,

          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: white),
              ),
              hintText: 'search amazon in',
              suffixIcon: Icon(Icons.camera),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),


      ),
      body: Column(
        children: [

          Container(
            height: 50,
            width: 400,
           color: dww,
            child: Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 10,),
                Text('select a location to see product availability'),
              ],
            ),
          ),
         Container(
           height: 150,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             itemCount:Model1.length,
               itemBuilder: (BuildContext context, int index) {

                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                     children: [
                       Container(
                         height: 60,
                           child: Image.asset(Model1[index].image),
                       ),
                       Text("dog"),
                     ],
                   ),
                 );





               },
           ),
         ),






         CarouselSlider.builder(
          options: CarouselOptions(
            height: 200,
            aspectRatio: 1/2,
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
           // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
          return  Container(
              height: 100,
               width: 400,

             decoration: BoxDecoration(
               color: Colors.cyanAccent,
               image: DecorationImage(
                 image:AssetImage(Model1[itemIndex].image),
                 fit:BoxFit.cover,

               ),

             ),
             // child: Image.asset("assets/panda.jpg")
            );

          }
        ),
          Container(
            height: 200,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:Model1.length,
              itemBuilder: (BuildContext context, int index) {

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(Model1[index].image),
                        fit: BoxFit.cover

                      )

                    ),

                  ),
                );





               },



            )

          ),
      //     Container(
      //       height: 300,
      //       color:Colors.cyan ,
      //       child: GridView.builder(
      //         physics: NeverScrollableScrollPhysics(),
      //         gridDelegate: const
      //     )
      //
      //
      //
      //
      //
      //
          ]
      ),



    );
  }
}
