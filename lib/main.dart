import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/LandingPage/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    AppConstants.height=MediaQuery.sizeOf(context).height;
    AppConstants.width=MediaQuery.sizeOf(context).width;
    AppConstants.text=MediaQuery.textScaleFactorOf(context);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xfff52d56)),
        useMaterial3: true,
      ),
      home:const LandingPage() ,
    );
  }
}

