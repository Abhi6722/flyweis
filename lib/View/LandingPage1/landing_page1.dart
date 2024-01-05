import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/View/ExploreNewWayContinue/ExploreNewWayContinue.dart';

import '../LandingPage/landing_page.dart';
class LandingPage1 extends StatefulWidget {
  const LandingPage1({super.key});

  @override
  State<LandingPage1> createState() => _LandingPage1State();
}
class _LandingPage1State extends State<LandingPage1> {
 @override

  void initState() {
    // TODO: implement initState
   Future.delayed(const Duration(seconds: 2),(){
     Get.offAll(() => const ExploreNewWayContinue());
   });
   super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010302),
      body: Center(child: Image.asset('assets/images/big_landing.png')),
    );
  }
}
