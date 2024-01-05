import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
class BookRideAfterSelectLocation extends StatelessWidget {
  const BookRideAfterSelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:SingleChildScrollView(
        child: Column(
         children: [
           Stack(
             children: [
               SizedBox(
                 width: AppConstants.width,
                 child: Image.asset('assets/images/mapbackground2.png',fit: BoxFit.fill,),
               ),
               Card(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(50)
                 ),
                 color:Colors.white,
                 surfaceTintColor: Colors.white,
                 child: IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.grey,))
               )
             ],
           )
         ],
        ),
      )
    ));
  }
}
