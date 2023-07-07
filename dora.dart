import 'package:black/color.dart';
import 'package:black/model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class dora extends StatefulWidget {
  const dora({Key? key}) : super(key: key);

  @override
  State<dora> createState() => _doraState();
}

class _doraState extends State<dora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dww,
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
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                       padding: const EdgeInsets.all(8.0),
                child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 1 / 2,
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
                    itemCount: Model1.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) {
                      return Container(
                        height: 100,
                        width: 400,

                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          image: DecorationImage(
                            image: AssetImage(Model1[itemIndex].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        // child: Image.asset("assets/panda.jpg")
                      );
                    }),
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(80),
                      image: DecorationImage(
                        image: AssetImage('assets/offer.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 270,
                  ),
                  Container(
                    height: 50,
                    width: 70,
                    child: Icon(Icons.share),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Column(

              children: [
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text(
                      'Visit the IQOO store',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                    SizedBox(width: 100,),


                    RatingBarIndicator(
                      rating: 2.7,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 20.0,
                      direction: Axis.horizontal,
                    )

                  ],
                ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [
                     Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                     'Xiaomi Pad 5| Qualcomm Snapdragon 860| 120Hz Refresh Rate| 6GB, 256GB| 2.5K+ Display (10.95-inch/27.81cm)|1 Billion Colours| Dolby Vision Atmos| Quad Speakers| Wi-Fi| Gray'),
              ),
                   ],
                 ),
               ),


          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/amas.png'),



                    ),
                  ),
                ),
                SizedBox(width: 50,),
                Text('for iqoo 5g'),

              ],
            ),
          ),

             Padding(
               padding: const EdgeInsets.only(left: 10),
               child: Row(
                 children: [
                   RichText(
                     text: TextSpan(
                       text: '-14%  ',
                       style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),
                       //DefaultTextStyle.of(context).style,
                       children: <TextSpan>[
                         TextSpan(text: '\u{20B9}', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),


                         ),




                       ],
                     ),
                   ),
                   SizedBox(width: 10,),
                   Text('18,000',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),

                 ],
               ),
             ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text('deal',style: TextStyle(fontSize: 15,color: Colors.red),  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Expanded(child: Text(' EMI from \u{20B9}908.No Cost EMI available.EMI options Inclusive of all taxes')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text('Total :',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                Text('\u{20B9}18,000',style: TextStyle(fontSize:20 ),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('FREE delivery Tuesday,16 May.Details'),


              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.location_on),
                Text('select delivery location'),

              ],

            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text('In Stock'),
              ),
            ],

          ),
          Column(
            children: [
              Container(

                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.1),
                  color: dd,


                ),
                child:Center(child: Text('Add to cart')),
                ),
    ],
              ),
              SizedBox(height: 20,),
              Container(
              height: 50,
              width: 350,
               decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.1),
               color: Colors.orange,




    ),
                child: Center(child: Text('Buy now')),


    ),

              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.lock),
                  Text('Secure transaction'),


                ],
              ),
              Row(
                children: [
                  Text('Sold by darshita etel and fulfilled by Amazon'),
                ],

              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),



                    ),

                  )


                ],
              ),
              Text('Send as a gift.Include custom message'),


    ],
          ),

    ),












        ],
      ),
      );



  }
}
