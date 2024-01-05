import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/BookNowPage/book_now_page.dart';

import '../ChangeLocationPage/ChangeLocationPage.dart';
import '../Drawer/drawer.dart';
class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 5, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color =Colors.grey
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void bottomsheeets (BuildContext context){

      showModalBottomSheet(context: context, builder: (context){
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
      });


  }

  Widget bottomsheet (BuildContext context){
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.vertical(top: Radius.circular(40))
    ),
    width: AppConstants.width,
    height: AppConstants.height,
    padding: EdgeInsets.all(16.0),
    child: Column(
      children: [
        Icon(Icons.horizontal_rule_outlined,color: Colors.grey,size: 50,),
        // SizedBox(
        //     height: AppConstants.height*0.15,
        //     child: Image.asset('assets/images/gifimage.gif')),
        FanCarouselImageSlider(
          isClickable: false,
          expandedImageFitMode: BoxFit.fill,
          indicatorActiveColor: Colors.grey,
          // indicatorDeactiveColor: Colors.grey,
          currentItemShadow: [],
          imageRadius: 0,
          imageFitMode: BoxFit.fill,
          sideItemsShadow: [],
          sliderHeight:AppConstants.height*0.2 ,
          sliderWidth: AppConstants.width*0.9999,
          imagesLink: [
            'assets/images/a0.png',
            'assets/images/a1.png',
            'assets/images/a2.png'

          ], isAssets: true,
        ),
        SizedBox(
          height: AppConstants.height*0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
              itemCount: 11,
              itemBuilder: (context,index){
            return Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.01),
              child: SizedBox(
                  width: AppConstants.width*0.2,
                  height: AppConstants.height*0.1,
                  child: InkWell(
                      onTap: (){
                        switch (index) {
                          case 0:
                              Get.to(BookNowPage(index: 0));
                            break;
                          case 1:
                            Get.to(BookNowPage(index: 1));
                            break;
                          case 2:
                            Get.to(BookNowPage(index: 2));
                            break;
                          case 3:
                            Get.to(BookNowPage(index: 3));
                            break;
                          case 4:
                            Get.to(BookNowPage(index: 4));
                            break;
                          case 5:
                            Get.to(BookNowPage(index: 5));
                            break;
                          case 6:
                            Get.to(BookNowPage(index: 6));
                            break;
                          case 7:
                            Get.to(BookNowPage(index: 7));
                            break;
                          case 8:
                            Get.to(BookNowPage(index: 8));
                            break;
                          case 9:
                            Get.to(BookNowPage(index: 9));
                            break;
                          case 10:
                            Get.to(BookNowPage(index: 10));
                            break;
                          default:
                            print("Code for other cases");
                        }
                      },
                      child: Image.asset('assets/images/image$index.png'))),
            );
          }),
        ),
        Row(
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
            SizedBox(width: AppConstants.width*0.05,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PICK - UP',
                  style: TextStyle(color: Colors.grey),
                ),
                InkWell(
                  onTap: (){
                    bottomsheeets(context);
                  },
                  child: Text(
                    'My Current Location',
                  ),
                ),

                SizedBox(height: AppConstants.height*0.01,),
                Container(
                  height: AppConstants.height*0.001,
                  width:AppConstants.width*0.8,
                  color: Colors.grey,
                ),

                //   height: 1.h,
                // ),
                Text(
                  'DROP - OFF',
                    style: TextStyle(color: Colors.grey)
                ),

                // TextField()

                InkWell(
                  onTap: (){
                    print('working');
                    bottomsheeets(context);
                  },
                  child: Text(
                    '105 William St, Chicago, US',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: AppConstants.height*0.01,),
                Container(
                  height: AppConstants.height*0.001,
                  width:AppConstants.width*0.8,
                  color: Colors.grey,
                )
              ],
            )
          ],
          // mainAxisSize: MainAxisSize.min,
        ),
            SizedBox(
              height: AppConstants.height*0.2,
              child: Image.asset('assets/images/cabimge.png',fit: BoxFit.fill,),),
      SizedBox(height: AppConstants.height*0.03,)]));
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: DrawerMenu(),
        body: CustomScrollView(
          slivers: [
            // SliverAppBar(
            //   backgroundColor: Colors.white,
            //   surfaceTintColor: Colors.white,
            //   elevation: 0,
            //   leading: Builder(builder: (context)=> IconButton(onPressed: (){
            //
            //       Scaffold.of(context).openDrawer();
            //
            //   }, icon: Icon(Icons.menu),color: Colors.black,) ),
            //   title: Text('Current Location',style: TextStyle(color: Colors.black,fontSize: 17*AppConstants.text),),
            //   actions: [
            //     IconButton(onPressed: (){}, icon: Icon(Icons.my_location,color: Colors.black,size: 20,))
            //   ],
            // ),
            SliverToBoxAdapter(
              child:Stack(
                children: [
                  SizedBox(
                      width:AppConstants.width,
                      child: Image.asset('assets/images/map0.png',fit: BoxFit.fill,)),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    
                    child:TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Current Location',
                        prefixIcon: Builder(builder: (context)=> IconButton(onPressed: (){

                          Scaffold.of(context).openDrawer();

                        }, icon: Icon(Icons.menu),color: Colors.black,) ),
                        suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.my_location,color: Colors.black,size: 20,))
                      ),
                    )
                  ),
                  Positioned(
                      top: AppConstants.height*0.3,
                      child: bottomsheet(context))
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
