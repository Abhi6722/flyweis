import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Konstants.dart';
import '../ChangeLocationPage/ChangeLocationPage.dart';
import '../HomePage/home_page.dart';
class SuperCarPage extends StatelessWidget {
  const SuperCarPage({required this.title,super.key});
final String title;
  Widget bottomsheeets (){
    return Container(
      height: AppConstants.height*0.999,
      decoration: BoxDecoration(
        // boxShadow: BoxShadow(),
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          // 1.h.heightBox,
          Image.asset('assets/images/pull_bar.png'),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.03),
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset('assets/images/outline_circle.png'),
                    CustomPaint(
                        size: Size(2, 50),
                        painter: DashedLineVerticalPainter()),
                    Image.asset('assets/images/location_pin.png'),
                  ],
                ),
                SizedBox(width:AppConstants.width*0.04),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PICK - UP',style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.to(ChangeLocationPage());
                      },
                      child: Row(
                        children: [
                          Text(
                            'My Current Location',
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 1.h,
                    // ),
                    //
                    // Container(
                    //   height: 1.2,
                    //   width: 80,
                    //   color: Colors.grey
                    // ),

                    //   height: 1.h,
                    // ),
                    SizedBox(height: AppConstants.height*0.04,),
                    Text(
                        'DROP - OFF',style: TextStyle(color: Colors.grey)
                    ),

                    // TextField()

                    GestureDetector(
                      onTap: (){
                        Get.to(ChangeLocationPage());
                      },
                      child: Row(
                        children: [
                          Text(
                            '105 William St, Chicago, US',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(width: AppConstants.width*0.07,),
                          Row(
                            children: [
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:BorderRadius.circular(50)
                                  ),
                                  color: Colors.grey,
                                  child:Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 2),
                                    child: Icon(Icons.close,color: Colors.white,size: 15,),
                                  )),
                              SizedBox(width: AppConstants.width*0.03,),
                              Image.asset('assets/images/map.png',height: 20,width: 20,)

                            ],)
                        ],
                      ),
                    ),
                  ],
                )
              ],
              // mainAxisSize: MainAxisSize.min,
            ),
          ),
          // SizedBox(
          //   height: 10,
          //   child: ListView.builder(
          //     physics: ScrollPhysics(),
          //     shrinkWrap: true,
          //     itemBuilder: (context, index) => Container(
          //       height: 4,
          //       decoration: BoxDecoration(
          //           color: Colors.white,
          //           boxShadow: [
          //             BoxShadow(
          //                 color: Colors.grey,
          //                 offset: Offset(0, 4),
          //                 blurRadius: 4,
          //                 spreadRadius: 2),
          //           ],
          //           borderRadius:
          //           BorderRadius.all(Radius.circular(50))),
          //       child: Text(
          //         'University of Washington',
          //         style: TextStyle(letterSpacing: 0.6),
          //       ),
          //     ),
          //     itemCount: 5,
          //     padding: EdgeInsets.only(left: 15),
          //     scrollDirection: Axis.vertical,
          //   ),
          // ),
          Container(color: Color(0xffefefef),height: AppConstants.height*0.03,width: AppConstants.width,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.03,vertical: AppConstants.height*0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Popular Locations',style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) => Column(
                children: [
                  ListTile(
                    dense: true,
                    leading: Image.asset(
                      'assets/images/location_pin.png',
                    ),
                    title: Text(
                      'Husky Stadium',
                    ),
                    trailing: Image.asset('assets/images/star.png'),
                  ),
                  Divider(
                    color: Colors.grey,
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.8,
                  ),
                ],
              ),
              scrollDirection: Axis.vertical,
              itemCount: 6,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xfff52d56),
      leading: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
      title: Text(title,style: TextStyle(color: Colors.white),),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: AppConstants.height*0.01,),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade100),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppConstants.height*0.4,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (content,index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: SizedBox(
                              width: AppConstants.width*0.7,
                              child: Image.asset('assets/images/car$index.png')),
                        );
                      }),
                    ),
                    // FanCarouselImageSlider(
                    //   isClickable: false,
                    //   autoPlay: false,
                    //   expandedImageFitMode: BoxFit.fill,
                    //   indicatorActiveColor: Colors.grey,
                    //   // indicatorDeactiveColor: Colors.white,
                    //   currentItemShadow: [],
                    //   imageRadius: 0,
                    //   imageFitMode: BoxFit.fitWidth,
                    //   sideItemsShadow: [],
                    //   expandImageHeight: AppConstants.height*0.4,
                    //   expandImageWidth:AppConstants.width*0.9999 ,
                    //   sliderHeight:AppConstants.height*0.4 ,
                    //   sliderWidth: AppConstants.width*0.9999,
                    //   imagesLink: [
                    //     'assets/images/car0.png',
                    //     'assets/images/car1.png',
                    //     'assets/images/car2.png'
                    //
                    //   ], isAssets: true,
                    // ),
                    Text('Audi Q8 ETRON',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                   , Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price ₹ 10,0000/day',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 12*AppConstants.text,),)
                    ,    Text('Book your car before one day',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 12*AppConstants.text,),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: AppConstants.height*0.02,),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade100),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppConstants.height*0.4,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (content,index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: SizedBox(
                              width: AppConstants.width*0.7,

                              child: Image.asset('assets/images/car$index.png')),
                        );
                      }),
                    ),
                    // FanCarouselImageSlider(
                    //   isClickable: false,
                    //   autoPlay: false,
                    //   expandedImageFitMode: BoxFit.fill,
                    //   indicatorActiveColor: Colors.grey,
                    //   // indicatorDeactiveColor: Colors.white,
                    //   currentItemShadow: [],
                    //   imageRadius: 0,
                    //   imageFitMode: BoxFit.fitWidth,
                    //   sideItemsShadow: [],
                    //   expandImageHeight: AppConstants.height*0.4,
                    //   expandImageWidth:AppConstants.width*0.9999 ,
                    //   sliderHeight:AppConstants.height*0.4 ,
                    //   sliderWidth: AppConstants.width*0.9999,
                    //   imagesLink: [
                    //     'assets/images/car0.png',
                    //     'assets/images/car1.png',
                    //     'assets/images/car2.png'
                    //
                    //   ], isAssets: true,
                    // ),
                    Text('Audi Q8 ETRON',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                   , Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Price ₹ 10,0000/day',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 12*AppConstants.text,),)
                    ,    Text('Book your car before one day',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 12*AppConstants.text,),)
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: AppConstants.height*0.1,)

          ],
        ),
      ),
      bottomSheet: SizedBox(
        width: AppConstants.width * 0.9,
        height: AppConstants.height * 0.08,
        child: Padding(
          padding:  EdgeInsets.only(bottom: 18.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Color(0xfff52d56)),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return bottomsheeets();
                  },
                );
                // isallow.value=true;
                // showMyDialogAllowLocation(context);
              },
              child: Text(
                'Book Now',
                style: TextStyle(
                    fontSize: 15 * AppConstants.text,
                    color: Colors.white),
              )),
        ),
      ),
    ));
  }
}
