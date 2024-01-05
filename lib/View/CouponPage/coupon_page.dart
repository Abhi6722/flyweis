import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/View/ChangeLocationPage/ChangeLocationPage.dart';

import '../../Constants/Konstants.dart';

class CouponPage extends StatelessWidget {
  const CouponPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: AppConstants.width,
              height: AppConstants.height * 0.15,
              color: Color(0xfff52d56),
              child: Padding(
                padding: EdgeInsets.only(
                    left: AppConstants.width * 0.03,
                    top: AppConstants.height * 0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
                    Text(
                      'Promo Codes',
                      style: TextStyle(
                          fontSize: 20 * AppConstants.text,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: AppConstants.height*0.02,),
                    Text('First10',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17*AppConstants.text),),
                    SizedBox(height: AppConstants.height*0.02,),
                    Text('50% offer for first',style: TextStyle(fontSize: 15*AppConstants.text),),
                    SizedBox(height: AppConstants.height*0.01,),
                    Card(
                      color:Color(0xffebebeb),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black,width: 0.5),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child:
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppConstants.width*0.02,vertical: AppConstants.height*0.01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('50 OFF',style: TextStyle(fontSize: 15*AppConstants.text),),
                          SizedBox(
                            width: AppConstants.width * 0.3,
                            height: AppConstants.height * 0.04,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    backgroundColor: Color(0xfff52d56)),
                                onPressed: () {
                                  isCouponShow.value=true;
                                  Get.back();
                                },
                                child: Text(
                                  'Apply',
                                  style: TextStyle(
                                      fontSize: 15 * AppConstants.text,
                                      color: Colors.white),
                                )),
                          ),

                        ],),
                      ),
                    ),
                    SizedBox(height: AppConstants.height*0.01,),
                    Container(color: Colors.black,width: AppConstants.width,height: AppConstants.height*0.001,)

                  ],
                ),
              );
            })
          ],
        ),
      ),
    ));
  }
}
