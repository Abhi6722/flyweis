import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';

import '../WelcomeToTripRiderAllow/welcome_to_trip_rider_allow.dart';
class ExploreNewWayContinue extends StatelessWidget {
  const ExploreNewWayContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: AppConstants.height*0.15,),
          SizedBox(
            width: AppConstants.width*0.99,
            height: AppConstants.height*0.4,
            child: Image.asset('assets/images/car.png',fit: BoxFit.fill,),
          ),
            SizedBox(height: AppConstants.height*0.06,),

            Padding(
            padding: EdgeInsets.only(right:AppConstants.width*0.23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Explore new ways to travel with,',style: TextStyle(fontSize:16*AppConstants.text,fontWeight: FontWeight.bold),),
                Text('Trip Rider',style: TextStyle(fontSize:16*AppConstants.text,fontWeight: FontWeight.bold))
              ],
            ),
          ),
            SizedBox(height: AppConstants.height*0.06,),

            SizedBox(
            width: AppConstants.width*0.85,
            height: AppConstants.height*0.06,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0xfff52d56)
                ),
                onPressed: (){Get.to(() => WelcomeToTripRiderAllow());}, child: Text('Continue',style: TextStyle(fontSize:15*AppConstants.text,color: Colors.white),)),
          )
        ],),
      ),
    );
  }
}

