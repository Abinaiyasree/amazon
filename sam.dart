import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'color.dart';
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //backgroundColor: pink,
      appBar: AppBar(
        backgroundColor: dd,
        title: Text('hello',style: txt,),
      ),
      body: Column(
        children: [

          Container(
            height: 30,
            color: dww,

          ),
          ///grid view
          Container(
            height: 270,
            //color: pink,
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2.5/ 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount:4,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    children: [
                      Container(
                          height: 100,
                          child: Image.asset("assets/panda.jpg")),
                      Text("data"),
                    ],
                  );

                }),
          ),






          ///Listview builder
//            Container(
//             height: 100,
//            // color: pink,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 5,
//
//                 itemBuilder: (BuildContext context, index)
//                     {
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                     children: [
//                         Container(
//                             height: 50,
//                             child: Image.asset("assets/as.png")),
//                         Text("data"),
//                     ],
//                   ),
//                       );
//                     }
//             ),
//           ),


          /////slider


          // CarouselSlider.builder(
          //   options: CarouselOptions(
          //     height: 200,
          //     aspectRatio: 1/2,
          //     viewportFraction: 0.8,
          //     initialPage: 0,
          //     enableInfiniteScroll: true,
          //     reverse: false,
          //     autoPlay: true,
          //     autoPlayInterval: Duration(seconds: 3),
          //     autoPlayAnimationDuration: Duration(milliseconds: 800),
          //     autoPlayCurve: Curves.linear,
          //     enlargeCenterPage: true,
          //     enlargeFactor: 0.3,
          //    // onPageChanged: callbackFunction,
          //     scrollDirection: Axis.horizontal,
          //   ),
          //   itemCount: 2,
          //   itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
          //   {
          //    return  Container(
          //       height: 100,
          //
          //       width: 300,
          //       color: Colors.cyanAccent,
          //       child: Image.asset("assets/panda.jpg")
          //     );
          //
          //   }
          // )



          // ListView.builder(itemBuilder: itemBuilder)



        ],
      ),
    );
  }
}












