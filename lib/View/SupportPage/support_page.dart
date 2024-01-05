import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Konstants.dart';
class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: AppConstants.height * 0.3,
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
                              children: [
                                Text(
                                  "Support",
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
                  ],
                ),
                SizedBox(height: AppConstants.height*0.8,),
                Positioned(
                  top: AppConstants.height*0.22,
                  left: AppConstants.width*0.07,
                  child: Column(
                    children: [
                      SizedBox(
                        width: AppConstants.width*0.85,
                        child: Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.03,vertical: AppConstants.height*0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Phone call',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                                SizedBox(height: AppConstants.height*0.02,),
                                Text('Call us 24 x 7 we will answer you!',style: TextStyle(color: Colors.grey,fontSize: 15*AppConstants.text),),
                                SizedBox(height: AppConstants.height*0.02,),
                                Text('+91 123567890',style: TextStyle(color: Colors.green,fontSize: 15*AppConstants.text),),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: AppConstants.width*0.85,
                        child: Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.03,vertical: AppConstants.height*0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Email',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                                SizedBox(height: AppConstants.height*0.02,),
                                Text('Get solutions beamed to your inbox',style: TextStyle(color: Colors.grey,fontSize: 15*AppConstants.text),),
                                SizedBox(height: AppConstants.height*0.02,),
                                Text('support@name.in',style: TextStyle(color: Colors.green,fontSize: 15*AppConstants.text),),

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: AppConstants.width*0.85,
                        child: Card(
                          color: Colors.white,
                          surfaceTintColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.03,vertical: AppConstants.height*0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Whatsapp chat',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                                SizedBox(height: AppConstants.height*0.02,),
                                Text('Start a conversion on whatsapp now!',style: TextStyle(color: Colors.grey,fontSize: 15*AppConstants.text),),
                                SizedBox(height: AppConstants.height*0.02,),
                                Text('+91123567890',style: TextStyle(color: Colors.green,fontSize: 15*AppConstants.text),),

                              ],
                            ),
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
