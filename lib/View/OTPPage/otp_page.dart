import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';

import '../../controllers/login_controller.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);
  final LoginController _loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Expanded(
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
                child: const Column(
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
                  controller: _loginController.otpController,
                  length: 4,
                  onChanged: (value) => _loginController.otpController,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    selectedColor: Colors.black,
                    inactiveColor: Colors.grey,
                    activeColor: Colors.black,
                    fieldWidth: 50,
                    fieldHeight: 50,
                    borderWidth: 1,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              SizedBox(height: AppConstants.height*0.03,),
              const Text(
                '02:10 mins',
              ),
              SizedBox(height: AppConstants.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Didn\'t receive OTP Code !',
                      style: TextStyle(color: Colors.grey)
                  ),
                  TextButton(
                    onPressed: () {
                      _loginController.resendOTP();
                    },
                    child: const Text('Resend',style: TextStyle(color: Colors.black),),
                  )
                ],
              ),
              SizedBox(height: AppConstants.height*0.05,),
              SizedBox(
                width: AppConstants.width * 0.9,
                height: AppConstants.height * 0.06,
                child: Obx(() {
                  return ElevatedButton(
                    onPressed: () {
                      _loginController.verifyOTP();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff52d56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: _loginController.isLoading.value
                        ? const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        )
                        : const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
