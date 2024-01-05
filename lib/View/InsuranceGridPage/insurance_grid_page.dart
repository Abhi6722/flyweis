import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/View/ExploreplanPage/explore_plan_page.dart';

import '../../Constants/Konstants.dart';
class InsuranceGridPage extends StatelessWidget {
  const InsuranceGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: AppConstants.width,
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
                  // Padding(
                  //   padding:
                  //   EdgeInsets.only(top: AppConstants.height * 0.03),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         "Settings",
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 24 * AppConstants.text),
                  //       ),
                  //
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              width: AppConstants.width,
              height: AppConstants.height*0.2,
              child:Image.asset('assets/images/insurance0.png',fit: BoxFit.fill,),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hospital cash insurance',style: TextStyle(fontSize: AppConstants.text*14),),
                Text('Fixed daily cash on hospital admission, assured',style: TextStyle(fontSize: AppConstants.text*15,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: AppConstants.height*0.04,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width:AppConstants.width*0.2,
                          height: AppConstants.height*0.1,
                          child: Image.asset('assets/images/allhospital.png')),
                      Text('All hospitals'),
                      Text('covered')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width:AppConstants.width*0.2,
                          height: AppConstants.height*0.1,
                          child: Image.asset('assets/images/needonly.png')),
                      Text('Need only'),
                      Text('discharge slip')
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width:AppConstants.width*0.2,
                          height: AppConstants.height*0.1,
                          child: Image.asset('assets/images/flatcash.png')),
                      Text('Flat cash/day, no'),
                      Text('question')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: AppConstants.height*0.05,),

            Container(
              padding: EdgeInsets.all(8),
              color: Color(0xffebebeb),
              child: Column(
                children: [
                  Row(
children: [
  Text('Protection against non-mdeical spends',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15*AppConstants.text),),
],                ),
                  Row(
                    children: [
                      Expanded(child: Text('Use Hospital Cah to recover the cost of spends that are not covered',style: TextStyle(fontSize: 13*AppConstants.text),)),
                    ],
                  ),
                  Row(
                    children: [
                      Text('with any insurance',style: TextStyle(fontSize: 13*AppConstants.text),),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: AppConstants.width*0.3,
                            height: AppConstants.height*0.1,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/insurance0.png')),),
                          Positioned(
                              top: AppConstants.height*0.07,
                              left: AppConstants.width*0.04,
                              child: Text('Medicines',style: TextStyle(color: Colors.white,fontSize: 15*AppConstants.text,),))
                        ],
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            width: AppConstants.width*0.3,
                            height: AppConstants.height*0.1,
                            child:ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/insurance0.png')),),
                          Positioned(
                              top: AppConstants.height*0.07,
                              left: AppConstants.width*0.1,
                              child: Text('Food',style: TextStyle(color: Colors.white,fontSize: 15*AppConstants.text,),))
                        ],
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            width: AppConstants.width*0.3,
                            height: AppConstants.height*0.1,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/insurance0.png')),),
                          Positioned(
                              top: AppConstants.height*0.07,
                              left: AppConstants.width*0.1,
                              child: Text('Travel',style: TextStyle(color: Colors.white,fontSize: 15*AppConstants.text,),))
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: AppConstants.width*0.3,
                            height: AppConstants.height*0.1,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/insurance0.png')),),
                          Positioned(
                              top: AppConstants.height*0.07,
                              left: AppConstants.width*0.02,
                              child: Text('Loss of income',style: TextStyle(color: Colors.white,fontSize: 12*AppConstants.text,),))
                        ],
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            width: AppConstants.width*0.3,
                            height: AppConstants.height*0.1,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/insurance0.png')),),
                          Positioned(
                              top: AppConstants.height*0.07,
                              left: AppConstants.width*0.03,
                              child: Text('Accompanies',style: TextStyle(color: Colors.white,fontSize: 12*AppConstants.text,),))
                        ],
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            width: AppConstants.width*0.3,
                            height: AppConstants.height*0.1,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/insurance0.png')),),
                          Positioned(
                              top: AppConstants.height*0.07,
                              left: AppConstants.width*0.1,
                              child: Text('Scans',style: TextStyle(color: Colors.white,fontSize: 12*AppConstants.text,),))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
SizedBox(height: AppConstants.height*0.1,)
          ],
        ),
      ),
      bottomSheet: Container(
       color: Colors.white,
        child:SizedBox(
          width: AppConstants.width * 0.9,
          height: AppConstants.height * 0.06,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Color(0xfff52d56)),
              onPressed: () {
                Get.to(ExplorePlanPage());
              },
              child: Row(
                children: [
                  Text(
                    'Explore plans.Starting ',
                    style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                        color: Colors.white),
                  ),Icon(Icons.currency_rupee,size: 15,color: Colors.white,),
                  Text(
                    '44/months',
                    style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                        color: Colors.white),
                  ),
                ],
              )),
        ),

      ),
    ));
  }
}
