import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
class SharePage extends StatelessWidget {
  const SharePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/whatchat.png')
              ,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  children: [
                    InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                   SizedBox(width: AppConstants.width*0.3,),
                    Text('Whatsapp',style: TextStyle(color: Colors.white,fontSize: 17*AppConstants.text),)
                  ],
              ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
