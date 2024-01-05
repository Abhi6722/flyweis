import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Konstants.dart';
import '../LandingPage1/landing_page1.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}
class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 2),(){
      Get.offAll(() => const LandingPage1());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010302),
      body: Center(child: Image.asset('assets/images/small_Landing.png')),
    );
  }
}