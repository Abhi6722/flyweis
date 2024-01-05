import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Konstants.dart';
import '../HomePage/home_page.dart';
class MyHistoryConfirmPage extends StatelessWidget {
  const MyHistoryConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SingleChildScrollView(
      
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: AppConstants.width,
                child: Image.asset('assets/images/cancelrequestmap.png',fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Card(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        child: Icon(Icons.close,color: Colors.grey,size: 30,),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: AppConstants.height*0.5),
                child: Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:Column(
                    children: [
                      ListTile(leading: CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png'),),title: Text('Gregory Smith',style: TextStyle(fontWeight: FontWeight.bold),),subtitle: Row(children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Text('4.9',style: TextStyle(color: Colors.grey),)
                      ],),trailing: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        color: Colors.green,child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.phone,color: Colors.white,),
                        ),),),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.03),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/images/outline_circle.png'),
                                CustomPaint(
                                    size: Size(2, 50),
                                    painter: DashedLineVerticalPainter()),
                                Image.asset('assets/images/location_pin.png'),
                              ],
                            ),
                            SizedBox(width: AppConstants.width*0.05,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '7958 Swift Village',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                SizedBox(height: AppConstants.height*0.07,),

                                Row(
                                  children: [
                                    Text(
                                      '105 William St, Chicago, US',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                SizedBox(height: AppConstants.height*0.01,),

                              ],
                            )
                          ],
                          // mainAxisSize: MainAxisSize.min,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('TIME',style:TextStyle(color: Colors.grey,fontSize: AppConstants.text*14),),
                          SizedBox(width: AppConstants.width*0.1,),
                          Text('PRICE',style:TextStyle(color: Colors.grey,fontSize: AppConstants.text*14),)
                        ],),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('2 min',style:TextStyle(fontSize: AppConstants.text*14),),
                          SizedBox(width: AppConstants.width*0.1,),
                          Row(
                            children: [
                              Icon(Icons.currency_rupee,size: 10,color: Colors.black,),
                              Text('255.00',style:TextStyle(fontSize: AppConstants.text*14),),
                            ],
                          )
                        ],),
                      ),
                      SizedBox(height: AppConstants.height*0.02,),
                      SizedBox(
                        width: AppConstants.width * 0.9,
                        height: AppConstants.height * 0.06,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                backgroundColor: Color(0xfff52d56)),
                            onPressed: () {
                            },
                            child: Text(
                              'Cancel Request ',
                              style: TextStyle(
                                  fontSize: 15 * AppConstants.text,
                                  color: Colors.white),
                            )),
                      ),
                      SizedBox(height: AppConstants.height*0.02,)

                    ],
                  )
                ),
              )
            ],
          )
        ],
      ),
    ),));
  }
}
