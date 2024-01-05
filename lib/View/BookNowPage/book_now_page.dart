import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/ChangeLocationPage/ChangeLocationPage.dart';
import 'package:rajiv_cab_user_app/View/ExploreplanPage/explore_plan_page.dart';
import 'package:rajiv_cab_user_app/View/InsuranceGridPage/insurance_grid_page.dart';
import 'package:rajiv_cab_user_app/View/SuperCarPage/super_car_page.dart';

import '../HomePage/home_page.dart';
import '../MyPoliciesPage/my_policies_page.dart';

class BookNowPage extends StatelessWidget {
  const BookNowPage({required this.index, super.key});
  final int index;
  Widget subscriptionCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: AppConstants.height * 0.01,
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
                SizedBox(
                  width: AppConstants.width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PICK - UP',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'Home',
                    ),

                    SizedBox(
                      height: AppConstants.height * 0.01,
                    ),
                    Container(
                      height: AppConstants.height*0.001,
                      width:AppConstants.width*0.76,
                      color: Colors.grey,
                    ),

                    //   height: 1.h,
                    // ),
                    Text('DROP - OFF', style: TextStyle(color: Colors.grey)),

                    // TextField()

                    Row(
                      children: [
                        Text(
                          'Location',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppConstants.height * 0.01,
                    ),
                    Container(
                      height: AppConstants.height*0.001,
                      width:AppConstants.width*0.76,
                      color: Colors.grey,
                    ),

                  ],
                ),
              ],
            ),
            SizedBox(
              height: AppConstants.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CHARGES PER MONTH',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14 * AppConstants.text,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'AVAILABLE SEATS',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14 * AppConstants.text,
                  ),
                )
              ],
            ),
            SizedBox(
              height: AppConstants.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '₹ 3000.00',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14 * AppConstants.text,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '2',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14 * AppConstants.text,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
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
  Widget buildGridItemContent(int index) {
    return Card(
color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset('assets/images/insurance$index.png',
                  fit: BoxFit.fill,)),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hospital Cash',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16 * AppConstants.text),
                ),
                Text('Get Hospital Cash Cover of ₹1000/day for 100... ',
                    style: TextStyle(fontSize: 10 * AppConstants.text)),
                Text('₹44/month',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13 * AppConstants.text)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (index != 10)
              Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                          width: AppConstants.width * 0.999,
                          height: AppConstants.height * 0.25,
                          child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(
                                    0.5), // Adjust opacity and color as needed
                                BlendMode
                                    .darken, // You can use different BlendModes based on your requirement
                              ),
                              child: Image.asset(
                                'assets/images/booknowimage$index.png',
                                fit: BoxFit.fill,
                              ))),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, bottom: 4, top: 4),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          surfaceTintColor: Colors.white,
                          color: Colors.white,
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: 8.0, bottom: 4, top: 4),
                            child: IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: AppConstants.height * 0.18,
                            left: AppConstants.width * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              index == 0 ? 'Book daily cab' : index==1?'Book Bike':index==2?'Book ride for hours':index==3?'Book Monthly Subscription':index==4?
                              'Book cab for Airport':index==5?'Book Cab for':index==6?'Book Supercar':index==7?'Book Ambulance for':index==8?'Book Bike for':'Book Auto',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17 * AppConstants.text,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              index == 1 ? 'from anywhere' : index==5?'Out Station':index==6?'Before One Day':index==7?'Emergency':index==8?'Delivery':'from anywhere',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17 * AppConstants.text,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if(index==6)
                    Padding(
                      padding: const EdgeInsets.only(top:18.0),
                      child: SizedBox(
                        height: AppConstants.height*0.14,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context,index){
                          return InkWell(
                              onTap: (){
                                Get.to(SuperCarPage(title: index==0?'Audi':index==1?'BMW':'THAR',));
                              },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: SizedBox(
                                width: AppConstants.width*0.3,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset('assets/images/c$index.png'),
                                        Positioned(
                                          top:AppConstants.height*0.01,
                                            left:AppConstants.width*0.01,
                                            child:
                                        Text(index==0?'Audi':index==1?'BMW':'THAR',style: TextStyle(fontSize: AppConstants.text*12,fontWeight: FontWeight.bold),))
                                      ],
                                    ),
                                    Text(index==0?'Price:₹ 10,000/day':index==1?'Price:₹ 15,000/day':'Price:₹ 20,000/day',style: TextStyle(fontSize: 10*AppConstants.text,fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  if(index==7)
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset('assets/images/Normal.png'),
                                Text('Normal',style: TextStyle(fontSize: 12*AppConstants.text),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: AppConstants.width*0.05,),
                          Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset('assets/images/Configuration.png'),
                                Text('Configuration',style: TextStyle(fontSize: 12*AppConstants.text),)
                              ],
                            ),
                          ),
                        ),
                        ],
                      ),
                    ),
                  if (index == 2)
                    SizedBox(
                      height: AppConstants.height * 0.12,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, itemindex) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.grey, width: 0.2),
                                  borderRadius: BorderRadius.circular(5)),
                              color: Colors.white,
                              surfaceTintColor: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppConstants.width * 0.04,
                                    vertical: AppConstants.height * 0.02),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${itemindex + 1} Hr',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16 * AppConstants.text),
                                    ),
                                    Text(
                                      '${(itemindex + 1) * 5} km',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15 * AppConstants.text),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 8.0,
                        top: AppConstants.height * 0.03,
                        bottom: AppConstants.height * 0.1),
                    child: Row(

                      mainAxisAlignment: index==3?MainAxisAlignment.spaceBetween:MainAxisAlignment.start,
                      children: [
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
                            SizedBox(
                              width: AppConstants.width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PICK - UP',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  'Home',
                                ),

                                SizedBox(
                                  height: AppConstants.height * 0.01,
                                ),
                                Container(
                                  height: AppConstants.height*0.001,
                                  width:AppConstants.width*0.8,
                                  color: Colors.grey,
                                ),

                                //   height: 1.h,
                                // ),
                                Text('DROP - OFF',
                                    style: TextStyle(color: Colors.grey)),

                                // TextField()

                                Row(
                                  children: [
                                    Text(
                                      'Location',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: AppConstants.height * 0.01,
                                ),
                                Container(
                                  height: AppConstants.height*0.001,
                                  width:AppConstants.width*0.8,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ],
                        ),
                       if(index==3)
                        Padding(
                          padding:
                              EdgeInsets.only(right: AppConstants.width * 0.06),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'PICK - UP TIME',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                '12:30 PM',
                              ),

                              SizedBox(
                                height: AppConstants.height * 0.01,
                              ),
                              // Container(
                              //   height: AppConstants.height*0.001,
                              //   width:AppConstants.width*0.8,
                              //   color: Colors.grey,
                              // ),

                              //   height: 1.h,
                              // ),
                              Text('DROP - OFF TIME',
                                  style: TextStyle(color: Colors.grey)),

                              // TextField()

                              Row(
                                children: [
                                  Text(
                                    '01:00 PM',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: AppConstants.height * 0.01,
                              ),
                              // Container(
                              //   height: AppConstants.height*0.001,
                              //   width:AppConstants.width*0.8,
                              //   color: Colors.grey,
                              // )
                            ],
                          ),
                        ),
                      ],
                      // mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                  SizedBox(
                    width: AppConstants.width * 0.9,
                    height: AppConstants.height * 0.06,
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
                  if (index == 3)
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppConstants.width * 0.04,
                          vertical: AppConstants.height * 0.03),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Monthly Subscription',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17 * AppConstants.text,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: AppConstants.height * 0.02,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                    size: 10,
                                  ),
                                  SizedBox(
                                    width: AppConstants.width * 0.01,
                                  ),
                                  Text(
                                    'Add Location',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15 * AppConstants.text,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                          subscriptionCard(),
                          subscriptionCard()
                        ],
                      ),
                    ),
                  SizedBox(
                    height: AppConstants.height * 0.02,
                  ),
                  if (index != 3)
                    SizedBox(
                      width: AppConstants.width,
                      height: AppConstants.height * 0.2,
                      child: Image.asset(
                        'assets/images/cabimge$index.png',
                        fit: BoxFit.fill,
                      ),
                    )
                ],
              ),
            if (index == 10)
              Column(
                children: [
                  Container(
                    height: AppConstants.height * 0.2,
                    color: Color(0xfff52d56),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: AppConstants.height * 0.03,
                        ),
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(Icons.arrow_back_ios_new,
                                color: Colors.white)),
                        Padding(
                          padding:
                              EdgeInsets.only(top: AppConstants.height * 0.03),
                          child: Row(
                            children: [
                              Text(
                                "Insurance",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24 * AppConstants.text),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppConstants.width,
                    height:AppConstants.height*0.2,
                    child: Image.asset(

                      'assets/images/insurancetitle.png',fit: BoxFit.fill,),
                  ),
                  Container(
                    color: Color(0xffefefef),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/document.png'),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'View Article Policy',
                                  style: TextStyle(
                                      color: Color(0xfff52d56),
                                      fontSize: 15 * AppConstants.text),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                              onTap: (){
                                Get.to(MyPoliciesPage());
                              },child: Image.asset('assets/images/arrowbutton.png'))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Stay ahead of monsoon',
                          style: TextStyle(
                              fontSize: 15 * AppConstants.text,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Secure yourself with health insurances',
                          style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                          ),
                        )
                      ],
                    ),
                  ),
                  GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // crossAxisSpacing: 8.0,
                      // mainAxisSpacing: 8.0,
                    ),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int itemindex) {
                      return InkWell(
                          onTap: (){
                            Get.to(ExplorePlanPage());
                          },
                          child: buildGridItemContent(itemindex));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Protect your net Trip rides',
                          style: TextStyle(
                              fontSize: 15 * AppConstants.text,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Active now, pay only when you ride',
                          style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: AppConstants.width,
                    child: Image.asset('assets/images/videoimage.png',fit: BoxFit.fill,),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Trip Rider Insurance plans',
                          style: TextStyle(
                              fontSize: 15 * AppConstants.text,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Plenty of reason to get Trip Rider Insurance',
                          style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppConstants.height*0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                          Icon(Icons.circle,color: Colors.black,size:10,),
                            SizedBox(width:AppConstants.width*0.02),
                            Text(
                              'Toller made plans',
                              style: TextStyle(
                                  fontSize: 15 * AppConstants.text,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'To best suit your needs',
                          style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.circle,color: Colors.black,size:10,),
                            SizedBox(width:AppConstants.width*0.02),
                            Text(
                              'Small pact, big impact',
                              style: TextStyle(
                                  fontSize: 15 * AppConstants.text,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          ' Subscribe to monthly quarterly plans ',
                          style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.circle,color: Colors.black,size:10,),
                            SizedBox(width:AppConstants.width*0.02),
                            Text(
                              'Fully digitized process',
                              style: TextStyle(
                                  fontSize: 15 * AppConstants.text,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Insta-assurance for insta generration',
                          style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.circle,color: Colors.black,size:10,),
                            SizedBox(width:AppConstants.width*0.02),
                            Text(
                              'Pocket-friendly pricing',
                              style: TextStyle(
                                  fontSize: 15 * AppConstants.text,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Your money is better in your wallet',
                          style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.circle,color: Colors.black,size:10,),
                            SizedBox(width:AppConstants.width*0.02),
                            Text(
                              'Minimal documentation',
                              style: TextStyle(
                                  fontSize: 15 * AppConstants.text,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Not recommended for avid readers',
                          style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    ));
  }
}
