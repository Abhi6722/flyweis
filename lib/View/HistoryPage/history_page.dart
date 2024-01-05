import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Konstants.dart';
import '../HomePage/home_page.dart';
import '../MyHistoryConfirmPAge/my_history_confirm_page.dart';
class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: AppConstants.height * 0.25,
                      color: Color(0xfff52d56),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: AppConstants.height * 0.04,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "History",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24 * AppConstants.text),
                                ),
                                SizedBox(
                                  width: AppConstants.width*0.5,
                                  // height: AppConstants.height*0.04,
                                  child: Card(color: Color(0xffe92b52),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 8,vertical: 2),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('Oct 15,2018',style: TextStyle(color: Colors.white,fontSize:15*AppConstants.text,fontWeight: FontWeight.bold),),
                                          SizedBox(width: AppConstants.width*0.01,),
                                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,))
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppConstants.height*0.4,),
                Padding(
                  padding:  EdgeInsets.only(top:AppConstants.height*0.2 ),
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                    shrinkWrap: true,
                    children: [
                      InkWell(
                        onTap: (){
                          Get.to(MyHistoryConfirmPage());
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset('assets/images/circleLocation.png'),
                                        CustomPaint(
                                            size: Size(2, 50),
                                            painter: DashedLineVerticalPainter()),
                                        Image.asset('assets/images/location_pin.png'),
                                      ],
                                    ),
                                    SizedBox(
                                      width: AppConstants.width * 0.03,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.symmetric(vertical: AppConstants.height*0.02,horizontal: AppConstants.width*0.02),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Home',
                                          ),
                                          SizedBox(
                                            height: AppConstants.height * 0.07,
                                          ),
                                          Text('105 William St. Chicago,US'),


                                          // Container(
                                          //   height: AppConstants.height*0.001,
                                          //   width:AppConstants.width*0.8,
                                          //   color: Colors.grey,
                                          // )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/images/money.png'),
                                        Icon(Icons.currency_rupee,size: 10,),
                                        Text('75.00')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Confirm',style: TextStyle(color:Color(0xfff52d56),fontSize: AppConstants.text*14 ),),
                                        Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                        InkWell(
                        onTap: () {
                          Get.to(MyHistoryConfirmPage());
                        },
    child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset('assets/images/circleLocation.png'),
                                        CustomPaint(
                                            size: Size(2, 50),
                                            painter: DashedLineVerticalPainter()),
                                        Image.asset('assets/images/location_pin.png'),
                                      ],
                                    ),
                                    SizedBox(
                                      width: AppConstants.width * 0.03,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.symmetric(vertical: AppConstants.height*0.02,horizontal: AppConstants.width*0.02),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Home',
                                          ),
                                          SizedBox(
                                            height: AppConstants.height * 0.07,
                                          ),
                                          Text('105 William St. Chicago,US'),


                                          // Container(
                                          //   height: AppConstants.height*0.001,
                                          //   width:AppConstants.width*0.8,
                                          //   color: Colors.grey,
                                          // )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/images/money.png'),
                                        Icon(Icons.currency_rupee,size: 10,),
                                        Text('75.00')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Confirm',style: TextStyle(color:Color(0xfff52d56),fontSize: AppConstants.text*14 ),),
                                        Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(MyHistoryConfirmPage());
                        },
    child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset('assets/images/circleLocation.png'),
                                        CustomPaint(
                                            size: Size(2, 50),
                                            painter: DashedLineVerticalPainter()),
                                        Image.asset('assets/images/location_pin.png'),
                                      ],
                                    ),
                                    SizedBox(
                                      width: AppConstants.width * 0.03,
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.symmetric(vertical: AppConstants.height*0.02,horizontal: AppConstants.width*0.02),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Home',
                                          ),
                                          SizedBox(
                                            height: AppConstants.height * 0.07,
                                          ),
                                          Text('105 William St. Chicago,US'),


                                          // Container(
                                          //   height: AppConstants.height*0.001,
                                          //   width:AppConstants.width*0.8,
                                          //   color: Colors.grey,
                                          // )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/images/money.png'),
                                        Icon(Icons.currency_rupee,size: 10,),
                                        Text('75.00')
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Confirm',style: TextStyle(color:Color(0xfff52d56),fontSize: AppConstants.text*14 ),),
                                        Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
