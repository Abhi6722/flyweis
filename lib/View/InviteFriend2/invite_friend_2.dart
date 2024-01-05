import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/View/sharepage/sharepage.dart';

import '../../Constants/Konstants.dart';
class InviteFriend2 extends StatelessWidget {
  const InviteFriend2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: AppConstants.width,
              height: AppConstants.height * 0.2,
              color: Color(0xfff52d56),
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [

                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_ios_new,
                          color: Colors.white)),
                  SizedBox(width: AppConstants.width*0.04,),
                  SizedBox(width: AppConstants.width*0.2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Invite Friends",
                        style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: 20 * AppConstants.text),
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: AppConstants.height*0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text('Refer a Friend and Earn xx ',style: TextStyle(color: Colors.pink),),
              Icon(Icons.currency_rupee,color: Colors.pink,)
              ],
            ),
            SizedBox(height: AppConstants.height*0.04,),
            Text('Share Via',style: TextStyle(fontSize: 15*AppConstants.text),),
            SizedBox(height: AppConstants.height*0.04,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                InkWell(
                    onTap:(){
                      Get.to(SharePage());
                    },
                    child: Image.asset('assets/images/whatsapp.png')),
                Image.asset('assets/images/insta.png'),
                Image.asset('assets/images/fblogo.png'),
                Image.asset('assets/images/twitter.png'),

              ],),
            ),
            SizedBox(height: AppConstants.height*0.04,),

            Text('Know more about how it works',style: TextStyle(fontSize: 15*AppConstants.text),),


          ],
        ),
      ),
    ));
  }
}
