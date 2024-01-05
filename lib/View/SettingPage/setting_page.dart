import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/View/LoginPage/login_page.dart';
import 'package:rajiv_cab_user_app/View/PrivacyPolicy/privacy_policy_page.dart';
import 'package:rajiv_cab_user_app/View/SelectLanguagePage/select_language_page.dart';
import 'package:rajiv_cab_user_app/View/SupportPage/support_page.dart';

import '../../Constants/Konstants.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: AppConstants.height * 0.25,
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
                  padding:
                  EdgeInsets.only(top: AppConstants.height * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Settings",
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
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png'),),
            title: Text('Larry Davis',style: TextStyle(fontSize: 16*AppConstants.text,fontWeight: FontWeight.w500),),
            subtitle: Text('Gold Member',style: TextStyle(color: Colors.grey,fontSize: 12*AppConstants.text),),
          trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,)),
          ),
          Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12,width: 0.5),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notifications',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12,width: 0.5),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Security',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                ],
              ),
            ),
          ),
          InkWell(
            onTap:(){ Get.to(SelectLanguagePage());},

            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12,width: 0.5),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Language',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Get.to(PrivacyPolicyPage());
            },
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12,width: 0.5),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Privacy Policy and Terms Condition',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Get.to(SupportPage());
            },
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12,width: 0.5),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Contact us',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Get.offAll(LoginPage());
            },
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12,width: 0.5),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Log out',style: TextStyle(color: Colors.red,fontSize: 15*AppConstants.text),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),));
  }
}
