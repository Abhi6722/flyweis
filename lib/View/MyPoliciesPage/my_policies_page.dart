import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Konstants.dart';
class MyPoliciesPage extends StatelessWidget {
  const MyPoliciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child: Column(
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
                        "My policies",
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
          SizedBox(height: AppConstants.height*0.07,),
          SizedBox(child: Image.asset('assets/images/mypoliciesimage.png'),),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('No insurance purchased yet',style:TextStyle(fontSize: 16*AppConstants.text,)),
              Text('All purchased/opted-in insurances will be ',style:TextStyle(fontSize: 14*AppConstants.text,)),
              Text('listed here',style:TextStyle(fontSize: 14*AppConstants.text,)),
            ],
          )
        ],
      ),
    ),));
  }
}
