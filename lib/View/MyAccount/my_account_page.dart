import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spinner_date_time_picker/spinner_date_time_picker.dart';

import '../../Constants/Konstants.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  // DateTime selectedDate = DateTime.now();
  DateTime date = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  // DateTime time = DateTime(2016, 5, 10, 22, 35);
  // DateTime dateTime = DateTime(2016, 8, 3, 17, 45);
  void bottomsheet(BuildContext context){
   showModalBottomSheet(
     backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: AppConstants.width*0.05,),
                Text('Birthday',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text,fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.close,color: Colors.black,))
              ],
            ),
            Container(
              width: AppConstants.width,
              height: AppConstants.height*0.001,
              color: Colors.black,
            ),
            Expanded(
              child: CupertinoDatePicker(
                initialDateTime: date,
                mode: CupertinoDatePickerMode.date,
                use24hFormat: true,
                // This shows day of week alongside day of month
                showDayOfWeek: true,
                // This is called when the user changes the date.
                onDateTimeChanged: (DateTime newDate) {
                  setState(() => date = newDate);
                },
              ),
            ),
          ],
        );
      });
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
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
                    height: AppConstants.height * 0.04,
                  ),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_ios_new,
                          color: Colors.white)),
                  Padding(
                    padding: EdgeInsets.only(top: AppConstants.height * 0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24 * AppConstants.text),
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/profile.jpg'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
              child: Column(
                children: [
                  SizedBox(height: AppConstants.height*0.02,),
                  Container(
 padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 0.5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: AppConstants.height*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Level',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15 * AppConstants.text),
                          ),
                          Text('Gold Member',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15 * AppConstants.text))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: AppConstants.height*0.02,),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 0.5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: AppConstants.height*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15 * AppConstants.text)),
                          Text('Flyweis',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15 * AppConstants.text))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: AppConstants.height*0.02,),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 0.5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: AppConstants.height*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Email',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15 * AppConstants.text)),
                          Text('flyweis@gmail.com',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15 * AppConstants.text))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: AppConstants.height*0.02,),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 0.5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: AppConstants.height*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Gender',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15 * AppConstants.text)),
                          Text('Male',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15 * AppConstants.text))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: AppConstants.height*0.02,),
                  InkWell(
                    onTap: (){
                      bottomsheet(context);
                    },
                    child: Container(
                      padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12,width: 0.5),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: AppConstants.height*0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Birthday',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15 * AppConstants.text)),
                            Text('April 16 1999',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15 * AppConstants.text))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: AppConstants.height*0.02,),
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.02),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12,width: 0.5),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: AppConstants.height*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Phone Number',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15 * AppConstants.text)),
                          Text('+91 1234567890',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15 * AppConstants.text))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: AppConstants.height*0.02,),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
