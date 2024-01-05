import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/InviteFriend2/invite_friend_2.dart';
class InviteFriendPage extends StatelessWidget {
  const InviteFriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body:SingleChildScrollView(
      child:Column(
        children: [
          Container(
            color: Color(0xfff52d56),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                SizedBox(width: AppConstants.width*0.1,),
                Text('Invite Friends',style: TextStyle(color: Colors.white,fontSize: 17*AppConstants.text),)
              ],
            ),
          ),
          Stack(
            children: [
              SizedBox(
                width: AppConstants.width,
                height: AppConstants.height*0.6,
                child: Image.asset('assets/images/invitefriend.png',fit: BoxFit.fill,),
              ),
              Padding(
                padding:  EdgeInsets.only(top: AppConstants.height*0.4),
                child: Center(
                  child: Column(
                    children: [
                      Text('Invite Friends',style: TextStyle(color: Colors.white,fontSize: 18*AppConstants.text,fontWeight: FontWeight.bold),),
                      SizedBox(width: AppConstants.width*0.01,),
                      Text('Get 3 Coupons each!',style: TextStyle(color: Colors.white,fontSize: 19*AppConstants.text,fontWeight: FontWeight.bold),),
                      Text('When your friend sign up with your referral',style: TextStyle(color: Colors.white,fontSize: 12*AppConstants.text),),
                      Text('Code.you\'ll both get 3.0 coupons',style: TextStyle(color: Colors.white,fontSize: 12*AppConstants.text),),

                    ],
                  ),
                ),
              ),
            ],
          ),
          // Container(
          //   color: Color(0xfff52d56),
          //   child: Column(
          //     children: [
          //       Text('Invite Friends',style: TextStyle(color: Colors.white,fontSize: 18*AppConstants.text),),
          //       SizedBox(width: AppConstants.width*0.01,),
          //       Text('Get 3 Coupons each!',style: TextStyle(color: Colors.white,fontSize: 19*AppConstants.text),),
          //       Text('When your friend sign up with your referral',style: TextStyle(color: Colors.white,fontSize: 15*AppConstants.text),),
          //       Text('Code.you\'ll both get 3.0 coupons',style: TextStyle(color: Colors.white,fontSize: 15*AppConstants.text),),
          //
          //     ],
          //   ),
          // ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: AppConstants.width*0.04),
            child: Column(
              children: [
                SizedBox(height: AppConstants.height*0.02,),
                Row(children: [
                  Text('Share Your Invite Code',style: TextStyle(color: Colors.black,fontSize: 15*AppConstants.text),),
                ],),
                SizedBox(height: AppConstants.height*0.02,),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text('Yo45KG',style: TextStyle(color: Colors.black,fontSize: 16*AppConstants.text,fontWeight: FontWeight.bold),),
                     IconButton(onPressed: (){}, icon: Icon(Icons.file_upload_outlined,color:Color(0xfff52d56),))
                      ]
                    ),
                    SizedBox(height: AppConstants.height*0.01,),

                    Container(
                      width: AppConstants.width*0.9,
                      height: AppConstants.height*0.001,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: AppConstants.height*0.05,),
          SizedBox(
            width: AppConstants.width*0.9,
            height: AppConstants.height*0.06,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xfff52d56)
                ),
                onPressed: (){
Get.to(InviteFriend2());
                }, child: Text('Invite Friends',style: TextStyle(fontSize:15*AppConstants.text,color: Colors.white),)),
          )
        ],
      ),
    ),));
  }
}
