import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/View/payment/PaymentPage.dart';

import '../../Constants/Konstants.dart';
class ExplorePlanPage extends StatelessWidget {
   ExplorePlanPage({super.key});
RxInt _selectedValue=0.obs;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: AppConstants.height * 0.2,
              color: Color(0xfff52d56),
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
                      children: [
                        Text(
                          "Choose your 1-year Plan & pay",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24 * AppConstants.text),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: AppConstants.height*0.02,
                ),
                Padding(
                  padding:  EdgeInsets.only(left:AppConstants.width*0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Daily Promotion',style: TextStyle(color: Colors.black,fontSize: 14*AppConstants.text),),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: AppConstants.width*0.9,
                  height: AppConstants.height*0.001,
                ),
                SizedBox(height: AppConstants.height*0.01,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: AppConstants.width*0.45,
                      decoration: BoxDecoration(
                        border: Border.all(color:  Color(0xfff52d56),width: 0.5)

                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.currency_rupee,size: 10,color: Colors.black,),
                              Text('1000/day',style: TextStyle(color: Colors.black,fontSize: 14*AppConstants.text),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.circle,color: Colors.black,size: 10,),
                              Text('549',style: TextStyle(color: Colors.black,),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: AppConstants.width*0.45,
                      decoration: BoxDecoration(
                        border: Border.all(color:  Color(0xfff52d56),width: 0.5)

                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.currency_rupee,size: 10,color: Colors.black,),
                              Text('1000/day',style: TextStyle(color: Colors.black,fontSize: 14*AppConstants.text),)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.circle,color: Colors.black,size: 10,),
                              Text('549',style: TextStyle(color: Colors.black,),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: AppConstants.height*0.02,
            ),
            Padding(
              padding:  EdgeInsets.only(left:AppConstants.width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Member to be secured',style: TextStyle(color: Colors.black,fontSize: 14*AppConstants.text),),
                ],
              ),
            ),
            Container(
              color: Colors.black,
              width: AppConstants.width*0.9,
              height: AppConstants.height*0.001,
            ),
            Obx(()=>Row(
              children: <Widget>[
                SizedBox(
                  width: AppConstants.width*0.4,
                  height: AppConstants.height*0.06,
                  child: RadioListTile(
                    activeColor: Colors.pink,
                    title: Text('Male',style: TextStyle(fontSize: 13*AppConstants.text)),
                    value: 1,
                    groupValue: _selectedValue.value,
                    onChanged: (value) {
                      _selectedValue.value=value!;
                    },
                  ),
                ),
                SizedBox(
                  width: AppConstants.width*0.44,
                  height: AppConstants.height*0.06,
                  child: RadioListTile(
                    activeColor: Colors.pink,
                    title: Text('Female',style: TextStyle(fontSize: 13*AppConstants.text),),
                    value: 2,
                    groupValue: _selectedValue.value,
                    onChanged: (value) {
                      _selectedValue.value=value!;

                    },
                  ),
                ),
              ],
            )),
            Container(
              width: AppConstants.width*0.9,
              height: AppConstants.height*0.1,
              decoration: BoxDecoration(
                color: Color(0xffebebeb),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: AppConstants.width*0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Buying For',style: TextStyle(color: Colors.black,fontSize: 13*AppConstants.text),),
                    TextField(decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,hintText: 'Self'),),
                  ],
                ),
              ),
            ),
            Container(
              width: AppConstants.width*0.9,
              height: AppConstants.height*0.1,
              margin: EdgeInsets.all(4),

              decoration: BoxDecoration(
                  color: Color(0xffebebeb),
                  borderRadius: BorderRadius.circular(10)
              ),              child: Padding(
              padding:  EdgeInsets.only(left: AppConstants.width*0.02),
                child: Column(
                  children: [
                    TextField(decoration: InputDecoration(border: InputBorder.none,hintText: 'Full Name'),),
                  ],
                ),
              ),
            ),
            Container(
              width: AppConstants.width*0.9,
              height: AppConstants.height*0.1,
              margin: EdgeInsets.all(4),

              decoration: BoxDecoration(
                  color: Color(0xffebebeb),
                  borderRadius: BorderRadius.circular(10)
              ),              child: Padding(
              padding:  EdgeInsets.only(left: AppConstants.width*0.02),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email',style: TextStyle(color: Colors.black,fontSize: 13*AppConstants.text),),
                    TextField(decoration: InputDecoration(border: InputBorder.none,hintText: 'xyz@gmail.com'),),
                  ],
                ),
              ),
            ),
            Container(
              width: AppConstants.width*0.9,
              height: AppConstants.height*0.1,
              margin: EdgeInsets.all(4),

              decoration: BoxDecoration(
                  color: Color(0xffebebeb),
                  borderRadius: BorderRadius.circular(10)
              ),              child: Padding(
              padding:  EdgeInsets.only(left: AppConstants.width*0.02),
                child: Column(
                  children: [
                    TextField(decoration: InputDecoration(border: InputBorder.none,hintText: 'Date of birth (DD/MM/YYYY)'),),
                  ],
                ),
              ),
            ),Container(
              width: AppConstants.width*0.9,
              height: AppConstants.height*0.1,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Color(0xffebebeb),
                  borderRadius: BorderRadius.circular(10)
              ),              child: Padding(
              padding:  EdgeInsets.only(left: AppConstants.width*0.02),
                child: Column(
                  children: [
                    TextField(decoration: InputDecoration(border: InputBorder.none,hintText: 'Pin Code'),),
                  ],
                ),
              ),
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
                    Get.to(PaymentPage());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Proceed to Pay. ',
                        style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                            color: Colors.white),
                      ),Icon(Icons.currency_rupee,size: 15,color: Colors.white,),
                      Text(
                        '549',
                        style: TextStyle(
                            fontSize: 15 * AppConstants.text,
                            color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
