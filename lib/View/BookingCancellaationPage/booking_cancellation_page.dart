import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Konstants.dart';
class BookingCancellationPage extends StatelessWidget {
   BookingCancellationPage({super.key});
  RxBool _checkbox1=false.obs;
  RxBool _checkbox2=false.obs;
  RxBool _checkbox3=false.obs;
  RxBool _checkbox4=false.obs;
  RxBool _checkbox5=false.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: AppConstants.height*0.25,
              color: Color(0xfff52d56),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: AppConstants.height*0.07,),
                  InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_ios_new, color: Colors.white)),
                  Padding(
                    padding:  EdgeInsets.only(top:AppConstants.height*0.03),
                    child: Row(
                      children: [
                        Text("Booking Cancellation",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 24*AppConstants.text),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: AppConstants.height*0.03,),
            Column(
              children: [
                Text('Choose reason for booking cancellation',style: TextStyle(fontSize: 16*AppConstants.text,fontWeight: FontWeight.bold),),

                SizedBox(height: AppConstants.height*0.04,),
                Obx(()=>Column(
                  children: [
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Long time wait'),
                      value: _checkbox1.value,
                      onChanged: (value) {
                     _checkbox1.value=value!;
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Price concern'),
                      value: _checkbox2.value,
                      onChanged: (value) {
                        _checkbox2.value=value!;

                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Driver issues, behavior, attitude on call'),
                      value: _checkbox3.value,
                      onChanged: (value) {
                        _checkbox3.value=value!;

                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Vehicle condition to be poor'),
                      value: _checkbox4.value,
                      onChanged: (value) {
                        _checkbox4.value=value!;

                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Security concerns uncomfortable for any reasons'),
                      value: _checkbox5.value,
                      onChanged: (value) {
                        _checkbox5.value=value!;

                      },
                    ),
                  ],
                )),
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
Get.back();
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                            color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    ) );
  }
}
