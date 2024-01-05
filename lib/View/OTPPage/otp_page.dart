// import 'package:parveen_frontend/controller/otp_controller.dart';
// import 'package:parveen_frontend/core/package.dart';
// import 'package:parveen_frontend/core/text_style.dart';
// import 'package:parveen_frontend/view/register_view/register.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
// import '../../core/color.dart';

// class OtpScreen extends GetView {
//   OtpScreen({Key? key}) : super(key: key);

//   final OtpController _otpController = Get.put(OtpController());

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: clrWhite,
//         extendBodyBehindAppBar: true,
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           elevation: 0,
//           // backgroundColor: Color.fromARGB(255, 255, 255, 255),
//           backgroundColor: Color(0x00000000),
//           leading: Icon(
//             Icons.arrow_back_ios,
//             color: clrBlack,
//           ).onTap(() => Get.back()),
//         ),
//         body: Column(
//           children: [
//             5.h.heightBox,
//             Container(
//               height: 150,
//               width: 150,
//               decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   // borderRadius: BorderRadius.all(
//                   //   Radius.circular(100),
//                   // ),
//                   color: clrBlack,
//                   image: DecorationImage(
//                       image: AssetImage('assets/img/logo.png'),
//                       fit: BoxFit.contain)),
//             ).centered(),
//             6.h.heightBox,
//             Text('Enter the OTP code from the phone we just sent you')
//                 .paddingOnly(right: 80),
//             2.h.heightBox,
//             PinCodeTextField(
//               appContext: context,
//               length: 4,
//               onChanged: (value) => _otpController.otp,
//               keyboardType: TextInputType.number,
//               cursorColor: clrPrimary,

//               // inputFormatters: [],
//               // boxShadows: [
//               //   // Shadow(offset: Offset(0,5)) ,
//               //   BoxShadow(
//               //       spreadRadius: 10,
//               //       offset: Offset(0, 1),
//               //       color: Colors.black12,
//               //       blurRadius: 10,
//               //       blurStyle: BlurStyle.solid)
//               // ],
//               pinTheme: PinTheme(
//                 shape: PinCodeFieldShape.box,
//                 selectedColor: clrPrimary,
//                 inactiveColor: clrBgGrey,
//                 disabledColor: clrBgGrey,
//                 activeColor: clrPrimary,
//                 fieldWidth: 60,
//                 fieldHeight: 60,
//                 borderWidth: 1,
//                 borderRadius: BorderRadius.circular(6),
//               ),
//             ).w(90.w),
//             2.h.heightBox,
//             Text(
//               '02:10 mins',
//               style: TextStyle(color: clrPrimary, wordSpacing: 1),
//             ).centered(),
//             2.h.heightBox,
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Didn\'t receive OTP Code !',
//                   style: txtGrey_Light_Normal,
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text('Resend'),
//                   style: ButtonStyle(
//                       foregroundColor: MaterialStateProperty.all(clrPrimary)),
//                 )
//               ],
//             ),
//             4.h.heightBox,
//             SizedBox(
//               width: 100.w,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () => Get.off(RegisterScreen()),
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(clrPrimary),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10)))),
//                 child: Text(
//                   'Submit',
//                 ),
//               ),
//             ),
//           ],
//         ).pSymmetric(h: 12),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/HomePage/home_page.dart';


class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   leadingWidth:40 ,
        //   toolbarHeight: 150,
        //   automaticallyImplyLeading: false,
        //   elevation: 0,
        //   // backgroundColor: Color.fromARGB(255, 255, 255, 255),
        //   backgroundColor: Color(0x00000000),
        //   leading:
        // ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: AppConstants.height*0.05,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: AppConstants.width*0.02),
                    child: InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/small_Landing.png'),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppConstants.height*0.05,),

              Padding(
                padding:  EdgeInsets.only(right:AppConstants.width*0.19,bottom: AppConstants.height*0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Enter the OTP code from the phone we',style: TextStyle(color: Colors.grey)),
                    Text('just sent you',style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.08),
                child: PinCodeTextField(
                  appContext: context,
                  // controller: _otpController.otp,
                  length: 4,
                  // onChanged: (value) => _otpController.otp,
                  keyboardType: TextInputType.number,
                  // cursorColor: clrPrimary,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    selectedColor: Colors.black,
                    inactiveColor: Colors.grey,
                    // disabledColor: clrBgGrey,
                    activeColor: Colors.black,
                    fieldWidth: 50,
                    fieldHeight: 50,
                    borderWidth: 1,

                    borderRadius: BorderRadius.circular(6),
                  ), onChanged: (String value) {  },
                ),
              ),
              SizedBox(height: AppConstants.height*0.03,),
              Text(
                '02:10 mins',

              ),
              SizedBox(height: AppConstants.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t receive OTP Code !',
                      style: TextStyle(color: Colors.grey)
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Resend',style: TextStyle(color: Colors.black),),

                  )
                ],
              ),
              SizedBox(height: AppConstants.height*0.05,),
              SizedBox(
                width: AppConstants.width*0.9,
                height:AppConstants.height*0.06,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(HomePage());
                    // _loginController.callLogin();
                  },
                  style:ElevatedButton.styleFrom(
                      backgroundColor:Color(0xfff52d56),
                      shape:
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
