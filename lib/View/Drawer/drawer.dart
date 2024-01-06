import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/BookingCancellationPolicy/BookingCancellationPolicyPage.dart';
import 'package:rajiv_cab_user_app/View/HistoryPage/history_page.dart';
import 'package:rajiv_cab_user_app/View/InsurancePage/insurance.dart';
import 'package:rajiv_cab_user_app/View/InviteFriendPage/invite_friend_page.dart';
import 'package:rajiv_cab_user_app/View/LoginPage/login_page.dart';
import 'package:rajiv_cab_user_app/View/MyAccount/my_account_page.dart';
import 'package:rajiv_cab_user_app/View/MyWallet/my_wallet.dart';
import 'package:rajiv_cab_user_app/View/Notification/notification_page.dart';
import 'package:rajiv_cab_user_app/View/PrivacyPolicy/privacy_policy_page.dart';
import 'package:rajiv_cab_user_app/View/SettingPage/setting_page.dart';
import 'package:rajiv_cab_user_app/View/SupportPage/support_page.dart';

import '../../controllers/wallet_controller.dart';
class DrawerMenu extends StatelessWidget {
  DrawerMenu({Key? key}) : super(key: key);

  final WalletController walletController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xfff52d56),
        width: AppConstants.width*0.7,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                // decoration: const BoxDecoration(
                //   // color: Color(0xfff52d56),
                //   // image: DecorationImage(
                //   //   image: AssetImage('assets/images/drawer_bg.png'),
                //   //   fit: BoxFit.fill,
                //   // ),
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: CircleAvatar(
                        radius: 39,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                    // ClipOval(
                    //   child: Image.asset(
                    //     'assets/images/profile.png',
                    //     width: 90,
                    //     height: 90,
                    //   ),
                    // ),
                  SizedBox(width: AppConstants.width*0.04,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Larry Davis',style: TextStyle(color: Colors.white,fontSize: 16*AppConstants.text),)
                        // "Cash"
                        // "2500"
                        ,SizedBox(
                          width: AppConstants.width*0.3,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)
                            ),
                            color:Colors.white,surfaceTintColor: Colors.white,child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text('Cash',style: TextStyle(color: Color(0xfff52d56)),),
                                Obx(
                                      () => Text(
                                    '${walletController.balance}',
                                    style: TextStyle(color: Color(0xfff52d56),fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),),
                        )
                        
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color:Colors.white,
                height: AppConstants.height*0.74,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    InkWell(
                        onTap:(){
                Get.to(MyAccountPage());
              },
                        child: buildMenuItem(Icons.home_rounded, "Account")),
                      // Get.to(const AccountScreen());
                    InkWell(
                      onTap: (){
                        Get.to(Insurance());

                      },
                      child: ListTile(
                          leading: SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('assets/images/insurance.png')),
                          minLeadingWidth: 10,
                          title:Text('Insurance',style: TextStyle(fontSize: 15*AppConstants.text),)
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Get.to(MyWallet());

                      },
                      child: ListTile(
                          leading: SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('assets/images/waller.png')),
                          minLeadingWidth: 10,
                          title:Text('My Wallet',style: TextStyle(fontSize: 15*AppConstants.text),)
                      ),
                    ),
                    // buildMenuItem(Icons.account_balance_wallet_rounded, "My wallet"),
                    // Get.to(const AccountScreen());
                    InkWell(
                      onTap:(){
                        Get.to(BookingCancellationPage());
                      },

                      child: ListTile(
                          leading: SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('assets/images/insurance.png')),
                          minLeadingWidth: 10,
                          title:Text('Booking Cancellation Policy',style: TextStyle(fontSize: 15*AppConstants.text),)
                      ),
                    ),
                    InkWell(
                        onTap: (){
                          Get.to(HistoryPage());
                        },
                        child: buildMenuItem(Icons.history, "History")),
                    InkWell(
                        onTap: (){
                          Get.to(NotificationPage());
                        },
                        child: buildMenuItem(Icons.notifications, "Notification")),
                    InkWell(
                        onTap: (){
                          Get.to(InviteFriendPage());
                        },
                        child: buildMenuItem(Icons.card_giftcard, "Invite friends")),
                    InkWell(
                        onTap: (){
                          Get.to(SettingPage());
                        },
                        child: buildMenuItem(Icons.settings, "Setting")),
                    InkWell(
                        onTap: (){
                          Get.to(SupportPage());
                        },
                        child: buildMenuItem(Icons.help, "Support")),
                    // buildMenuItem(Icons.security, "Terms and Privacy policy"),
                    InkWell(
                      onTap: (){
                        Get.to(PrivacyPolicyPage());
                      },
                      child: ListTile(
                          leading: SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('assets/images/shield.png')),
                          minLeadingWidth: 10,
                          title:Text('Privacy Policy',style: TextStyle(fontSize: 15*AppConstants.text),)
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:AppConstants.width*0.05),
                      child: Row(
                        children: [

                          InkWell(
                              onTap:(){
                                Get.offAll(LoginPage());
                    },
                              child: Text("Logout",style: TextStyle(color: Color(0xfff52d56),fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    ),
                    SizedBox(height: AppConstants.height*0.1,)

                  ],
                ),
              ),
              // buildMenuItem(Icons.support_agent, "Conact Us"),

            ],
          ),
        ));
  }

  Widget buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      minLeadingWidth: 10,
      title:Text(title,style: TextStyle(fontSize: 15*AppConstants.text),)
    );
  }
}