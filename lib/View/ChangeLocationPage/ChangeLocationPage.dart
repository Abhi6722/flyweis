import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/BookRideAfterSelectLoction/book_ride_after_select_location.dart';
import 'package:rajiv_cab_user_app/View/BookingCancellaationPage/booking_cancellation_page.dart';
import 'package:rajiv_cab_user_app/View/CouponPage/coupon_page.dart';
import 'package:rajiv_cab_user_app/View/EmergencyPage/emergency_page.dart';

import '../payment/PaymentPage.dart';
RxBool isCouponShow=false.obs;
class ChangeLocationPage extends StatelessWidget {
  ChangeLocationPage({super.key});
TextEditingController locataionController=TextEditingController();
RxBool isNow=false.obs;
RxString selecttime=''.obs;
RxBool isAvailableRide=false.obs;
RxBool isconfirmLocationChangeText=false.obs;
  void bookSuccessDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: Center(child: SizedBox(
              width: AppConstants.width*0.3,
              height: AppConstants.height*0.2,
              child: Image.asset('assets/images/check.png'))),
          content: SizedBox(
            height: AppConstants.height*0.14,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Booking Successful',style: TextStyle(color: Color(0xfff52d56)),),
                Text('Your booking has been confirmed.'),
                Text('Driver will pickup you in 2 minutes.',style: TextStyle(color: Colors.grey),),
                Text('0101',style: TextStyle(color: Colors.black),),
                Text('Start OTP',style: TextStyle(color: Colors.black),)
              ],),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){
                  Get.to(BookingCancellationPage());
                }, child: Text('Cancel',style: TextStyle(color: Colors.grey,fontSize: 15*AppConstants.text),)),TextButton(onPressed: (){
                  isconfirmLocationChangeText.value=true;
                  Get.back();
                  Get.back();
                  Get.back();
                }, child: Text('Done',style: TextStyle(color: Color(0xfff52d56),fontSize: 15*AppConstants.text),))
              ],)
          ],
        );
      },
    );


  }

  Widget timeWidget() {
    return new TimePickerSpinner(
      is24HourMode: false,
      normalTextStyle: TextStyle(
          fontSize: 17*AppConstants.text,
          color: Colors.grey
      ),
      highlightedTextStyle: TextStyle(
          fontSize: 17*AppConstants.text,
          // color: Colors.black
      ),
      spacing: 50,
      itemHeight: 40,
      isForce2Digits: true,
      onTimeChange: (time) {
        // setState(() {
        //   _dateTime = time;
        // });
        selecttime.value=time.toString();
      },
    );
  }
Widget bottomsheetbookvehicle(BuildContext context){
  return Container(
    color: Colors.white,
    height: AppConstants.height*0.8,
    child: Obx(()=>isNow.isFalse?

        Column(
      children: [
        SizedBox(height: AppConstants.height*0.02,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
          child: Row(
            children: [
             Image.asset('assets/images/circleLocation.png'),
              SizedBox(width: AppConstants.width*0.02,),
              Text('My current location',style: TextStyle(fontSize: 14*AppConstants.text),)
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: AppConstants.height*0.001,
              width: AppConstants.width*0.7,
              color: Colors.grey,
            ),
            InkWell(
              onTap: (){
                isNow.value=true;
              },
              child: Row(
                children: [
                  Icon(Icons.access_time_outlined,color: Color(0xfff52d56),),
                  SizedBox(width: AppConstants.width*0.02,),
                  Text('Now',style: TextStyle(color: Color(0xfff52d56),fontSize: 15*AppConstants.text),),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
          child: Row(
            children: [
            Icon(Icons.location_on,color: Color(0xfff52d56),),
              SizedBox(width: AppConstants.width*0.02,),
              Text('105 Willam St. Chicago,US',style: TextStyle(fontSize: 14*AppConstants.text),)
            ],
          ),
        ),
        Container(
          height: AppConstants.height*0.001,
          width: AppConstants.width,
          color: Colors.grey,
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02,vertical: AppConstants.height*0.02),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Available Rides',style: TextStyle(fontSize: 16*AppConstants.text,fontWeight: FontWeight.bold),),Obx(()=>isCouponShow.isTrue?Text('Any Rides',style: TextStyle(color: Color(0xfff52d56),fontSize: 16*AppConstants.text,decoration: TextDecoration.underline,decorationColor: Color(0xfff52d56)),):SizedBox()),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context,index){
            return Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
              child: InkWell(
                onTap: (){
                  if(isCouponShow.isFalse)
                  showModalBottomSheet(context: context,isScrollControlled: true, builder: (BuildContext context) {
                    return Container(
                      height: 600,
                      color: Colors.white,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: AppConstants.height*0.02,),

                                    Text('Book Any',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17*AppConstants.text),),
                                    SizedBox(height: AppConstants.height*0.02,),
                                    SizedBox(
                                        width: AppConstants.width*0.6,
                                        child: Text('Search across multiple categories to find the next available ride',style: TextStyle(color: Colors.black,fontSize: 14*AppConstants.text),))
                                  ],
                                ),
                                Expanded(
                                    // width: AppConstants.width*0.4,
                                    child: Image.asset('assets/images/carbook.png'))
                              ],
                            ),
                            SizedBox(height: AppConstants.height*0.02,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Fare',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text,fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,color: Colors.black,size: 10,),
                                    Text('200 - ',style: TextStyle(color: Colors.black,fontSize: 14*AppConstants.text,fontWeight: FontWeight.bold),),
                                    Icon(Icons.currency_rupee,color: Colors.black,size: 10,),
                                    Text('300',style: TextStyle(color: Colors.black,fontSize: 14*AppConstants.text,fontWeight: FontWeight.bold)),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text('Includes taxes',style: TextStyle(fontSize: 15*AppConstants.text,fontWeight: FontWeight.bold),)
                              ],
                            ),
                            SizedBox(height: AppConstants.height*0.02,),

                            Expanded(child: Text('Total fare may change-if toll, route or destination changes or if your ride takes longer due to traffic or other factors. Total fare doesn’t include Waiting Fee.You may be charged of Cancellation fee, if a trip is canceled after 3 (three) minutes or later fro the time of acceptance of booking by the Driver oif the driver cancels after reachingyour location and waiting for 5 minutes.')),
                            Row(
                              children: [
                                Text('Our Fleet',style: TextStyle(fontSize: 15*AppConstants.text,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            Row(
                              children: [
                                Text('SUV, Maruti Ritz',style: TextStyle(fontSize: 15*AppConstants.text,fontWeight: FontWeight.w500),)
                              ],
                            ),
                            SizedBox(height: AppConstants.height*0.03,),
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
Get.back();
                                  },
                                  child: Text(
                                    'Done',
                                    style: TextStyle(
                                        fontSize: 15 * AppConstants.text,
                                        color: Colors.white),
                                  )),
                            ),

                          ],
                        ),
                      ),
                    );
                  }
                  );

                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.2,color: Colors.black12)
                  ),
                  elevation: 0,
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: AppConstants.width*0.04),
                        child: SizedBox(
                          width:AppConstants.width*0.1,
                          height: AppConstants.height*0.1,
                          child:Image.asset('assets/images/image$index.png'),),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: AppConstants.width*0.2,
                              child: Text('Book Any',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 15*AppConstants.text),)),
                          Text('0.4km',style: TextStyle(color: Colors.grey,fontSize: 13*AppConstants.text),)
                        ],
                      ),

                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                        child: Row(
                          children: [
                            SizedBox(width: AppConstants.width*0.03,),
                            Obx(()=>isCouponShow.isFalse?Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    if(index==0)
                                    Icon(Icons.info_outlined,color: Colors.black,),
                                    SizedBox(width: AppConstants.width*0.02,),
                                    Row(
                                      children: [
                                        Icon(Icons.currency_rupee,size: 10,color: Colors.black,),
                                          Text('200 - ',style: TextStyle(color: Colors.black,fontSize:14*AppConstants.text),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.currency_rupee,size: 10,color: Colors.black,),
                                          Text('300',style: TextStyle(color: Colors.black,fontSize:14*AppConstants.text),)
                                      ],
                                    ),
                                  ],
                                ),
                                Text('3 min',style: TextStyle(color: Colors.grey,fontSize: 14*AppConstants.text),)
                              ],
                            ):Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee,size: 10,color: Colors.black,),
                                    SizedBox(width: 3,),
                                    Text('10.00'),
                                  ],
                                ),
                                Text('Promo Applied',style: TextStyle(color: Color(0xfff52d56),fontSize: 10*AppConstants.text),)
                              ],
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: AppConstants.width*0.45,
                  height: AppConstants.height*0.05,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          side: BorderSide(width: 0.5,color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          ),),
                      onPressed: (){Get.to(PaymentPage());}, child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset('assets/images/cash.png'),
                     SizedBox(width: AppConstants.width*0.02,),
                     Text('Cash',style: TextStyle(color: Colors.black,fontSize: 14*AppConstants.text),)
                    ],
                  )),
                ),
                SizedBox(
                  width: AppConstants.width*0.45,
                  height: AppConstants.height*0.05,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        surfaceTintColor: Colors.white,
                        side: BorderSide(width: 0.5,color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero
                        )
                      ),
                      onPressed: (){
                        Get.to(CouponPage());
                      }, child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset('assets/images/coupon.png'),
                      SizedBox(width: AppConstants.width*0.02,),
                     Text('Coupons',style: TextStyle(color: Colors.black,fontSize: 14*AppConstants.text),)
                    ],
                  )),
                ),


              ],
            ),
            SizedBox(height: AppConstants.height*0.02,),
            SizedBox(
              width: AppConstants.width * 0.75,
              height: AppConstants.height * 0.06,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Color(0xfff52d56)),
                  onPressed: () {
                    bookSuccessDialog(context);
                    // isallow.value=true;
                    // showMyDialogAllowLocation(context);
                  },
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                        color: Colors.white),
                  )),
            ),
          ],
        ),
      ],
    ):

    Column(
      children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
            child: Column(
              mainAxisAlignment:  MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Text('Select Date & Time',style: TextStyle(color: Colors.black,fontSize: 16*AppConstants.text,fontWeight: FontWeight.bold),)
                    ],),
                    IconButton(onPressed: (){isNow.value=false;}, icon: Icon(Icons.close,color: Colors.black,))
                  ],
                ),
                Row(
                  children: [
                  Text('For 12 hours or 120 kms',style: TextStyle(color: Colors.black,fontSize: 16*AppConstants.text,fontWeight: FontWeight.bold),)
                ],),
              ],
            ),
          ),
        SizedBox(height: AppConstants.height*0.03,),

        Padding(
          padding:  EdgeInsets.symmetric(vertical: AppConstants.width*0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
            SizedBox(
                width: AppConstants.width*0.5,
                child: Center(child: Text('October 2023'))),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,)),

          ],),
        ),
        SizedBox(height: AppConstants.height*0.06,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.03),
          child: SizedBox(
            height: AppConstants.height*0.09,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context,index){
              return SizedBox(
                width: AppConstants.width*0.15,
                height: AppConstants.height*0.09,
                child: Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(width: 0.5,color: Colors.black)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(child: Text('Mon',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),)),
                      Text('27',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
        SizedBox(height: AppConstants.height*0.06,),
        timeWidget(),
        SizedBox(height: AppConstants.height*0.06,),
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
                isNow.value=false;

                },
              child: Text(
                'Done',
                style: TextStyle(
                    fontSize: 15 * AppConstants.text,
                    color: Colors.white),
              )),
        ),

      ],
    )

  ),

  );

}
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(width: AppConstants.width,child: Image.asset('assets/images/mapbackground.png',fit: BoxFit.fill,),),
             Padding(
               padding:  EdgeInsets.only(top:AppConstants.height*0.04,left: AppConstants.width*0.02,right: AppConstants.width*0.02),
               child: Card(
                 color: Colors.white,
                 surfaceTintColor: Colors.white,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                 child: TextField(
                   controller: locataionController,
                 decoration: InputDecoration(
                   prefixIcon: IconButton(onPressed: (){
                     isCouponShow.value=false;
                     Get.back();}, icon: Icon(Icons.arrow_back_ios,color: Colors.grey,)),
                     suffixIcon: IconButton(onPressed: (){},icon: Card(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(50),

                       ),
                         color: Colors.grey,
                         child: Padding(
                           padding: const EdgeInsets.all(2.0),
                           child: Icon(Icons.close,color: Colors.white,size: 10,),
                         )),),
                     hintText: '105,William St. Chicago,US',
                   border: InputBorder.none
                 ),),
               ),
             ),
                Obx(()=>isconfirmLocationChangeText.isTrue?Positioned(
                  top: AppConstants.height*0.8,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: ()=>Get.to(EmergencyPage()),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          color: Color(0xfff52d56),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
                            child: Text('SOS',style: TextStyle(color: Colors.white,fontSize: 16*AppConstants.text,fontWeight: FontWeight.bold),),
                          ),),
                      )
                    ],
                  ),
                ):Container(),)
              ],
            ),

          ],
        ),
      ),
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(bottom: AppConstants.height*0.1),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          backgroundColor: Colors.white,
          onPressed: (){},
          child: Icon(Icons.my_location,color: Colors.black,),
        ),
      ),
      bottomSheet: InkWell(
        onTap: (){

          Get.to(BookRideAfterSelectLocation());
          showModalBottomSheet(
            // constraints: BoxConstraints(
            //   minHeight: AppConstants.height*0.9
            // ),
            context: context,
            isScrollControlled: true,
            builder: (BuildContext context) {
              return bottomsheetbookvehicle(context);
            },
          );
        },
        child: Container(
          height: AppConstants.height*0.07,
          color: Color(0xfff52d56),
          child: Center(child: Obx(()=>Text(isconfirmLocationChangeText.isFalse?'Confirm Location':'Share Location',style: TextStyle(color: Colors.white,fontSize: 15*AppConstants.text),))),
        ),
      ),
    ));
  }
}













