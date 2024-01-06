import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/View/payment/PaymentPage.dart';

import '../../Constants/Konstants.dart';
import '../../controllers/wallet_controller.dart';
class MyWallet extends StatelessWidget {
  MyWallet({super.key});

  final WalletController walletController = Get.put(WalletController());

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
                      height: AppConstants.height * 0.4,
                      color: const Color(0xfff52d56),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "My Wallet",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24 * AppConstants.text),
                                ),
                                SizedBox(
                                  width: AppConstants.width*0.3,
                                  child: Card(color: const Color(0xffe92b52),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding:  const EdgeInsets.symmetric(horizontal: 5,vertical: 4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('assets/images/coin.png'),
                                          SizedBox(width: AppConstants.width*0.01,),
                                          Obx(
                                                () => Text(
                                              '${walletController.balance}',
                                              style: TextStyle(color: Colors.white,fontSize:15*AppConstants.text,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppConstants.height*0.5,),
                Positioned(
                  top: AppConstants.height*0.2,
                  left: AppConstants.width*0.15,
                  child: SizedBox(
                      width: AppConstants.width*0.7,
                      height: AppConstants.height*0.1,
                      child: const Card(color: Colors.white,surfaceTintColor: Colors.white,)),
                ),
                Positioned(
                  top: AppConstants.height*0.22,
                  left: AppConstants.width*0.1,
                  child: SizedBox(
                      width: AppConstants.width*0.8,
                      height: AppConstants.height*0.1,
                      child: const Card(color: Colors.white,surfaceTintColor: Colors.white,)),
                ),
                Positioned(
                  top: AppConstants.height*0.24,
                  left: AppConstants.width*0.05,
                  child: SizedBox(
                      width: AppConstants.width*0.9,
                      // height: AppConstants.height*0.1,
                      child: Card(color: Colors.white,surfaceTintColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/dollar.png'),
                                SizedBox(height: AppConstants.width*0.02,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Cash',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text,fontWeight: FontWeight.w500),),
                                 SizedBox(height: AppConstants.height*0.01,),
                                    Text('Default Payment Method',style: TextStyle(color: Colors.grey,fontSize: 14*AppConstants.text),)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: AppConstants.height*0.04,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('BALANCE',style: TextStyle(color: Colors.grey,fontSize: 15*AppConstants.text),),
                                Padding(
                                  padding:  EdgeInsets.only(right: AppConstants.width*0.1),
                                  child: Text('EXPIRES',style: TextStyle(color: Colors.grey,fontSize: 15*AppConstants.text),),
                                )
                              ],
                            ),Padding(
                              padding:  EdgeInsets.only(right: AppConstants.width*0.1),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                    const Icon(Icons.currency_rupee,color: Colors.green,),
                                      Obx(
                                            () => Text(
                                          '${walletController.balance}',
                                          style: TextStyle(color: Colors.green,fontSize: 20*AppConstants.text),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text('09/21',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),)
                                ],
                              ),
                            ),
                            SizedBox(height: AppConstants.height*0.04,)
                          ],
                        ),
                      ),
                      )),
                ),
              ],
            ),
            InkWell(
              onTap: (){
                Get.to(const PaymentPage());
              },
              child: Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12,width: 0.5),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Payment Methods',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                      const Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
            ),
            Container(margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12,width: 0.5),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Coupon',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                    Text('7',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),

                  ],
                ),
              ),
            ),
            Container(margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12,width: 0.5),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('integral Mall',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                    Text('4500',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
