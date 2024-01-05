import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
void paymentSuccessDialog(BuildContext context){
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
          height: AppConstants.height*0.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('Payment is Successful',style: TextStyle(color: Color(0xfff52d56)),),
            Text('Your booking has been confirmed.'),
            Text('Driver will pickup you in 2 minutes.',style: TextStyle(color: Colors.grey),)
          ],),
        )
      
      );
    },
  );


}
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: AppConstants.width,
              height: AppConstants.height*0.15,
              color: Color(0xfff52d56),
              child: Padding(
                padding:  EdgeInsets.only(left: AppConstants.width*0.03,top: AppConstants.height*0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(onPressed: (){Get.back();}, icon:Icon(Icons.arrow_back_ios,color: Colors.white) ),
                    Text('Payment',style: TextStyle(fontSize: 20*AppConstants.text,color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.03,vertical: AppConstants.height*0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/dollar.png'),
                SizedBox(width: AppConstants.width*0.03,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cash',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                    Text('Default Payment Method',style: TextStyle(color: Colors.grey,fontSize: 14*AppConstants.text),)
                  ],
                )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.03,vertical: AppConstants.height*0.02),
              child: Row(
                children: [
                  Text('Personal Wallet',style: TextStyle(color: Colors.black,fontSize: 16*AppConstants.text,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            Image.asset('assets/images/paymentgateway.png'),
            Container(
              color: Colors.white,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.currency_rupee,color: Colors.black,size: 10,),
                            Text(' 150',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Text('View Details',style: TextStyle(fontSize: 14*AppConstants.text),)
                      ],
                    ),
                    SizedBox(
                      width: AppConstants.width * 0.5,
                      height: AppConstants.height * 0.06,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              backgroundColor: Color(0xfff52d56)),
                          onPressed: () {
                  paymentSuccessDialog(context);
                          },
                          child: Text(
                            'Pay',
                            style: TextStyle(
                                fontSize: 15 * AppConstants.text,
                                color: Colors.white),
                          )),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
