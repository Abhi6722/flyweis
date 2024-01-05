import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Konstants.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
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
                          "Notifications",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24 * AppConstants.text),
                        ),
                        Card(color: Color(0xffe92b52),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                            child: Icon(Icons.delete,color: Colors.white,)
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context,index){
              return ListTile(
                leading: Card(color: Color(0xffebebeb),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      child: SizedBox(
                          width: 15,
                          height: 15,
                          child: Image.asset('assets/images/${index==0?'check.png':index==1?'waller.png':index==2?'Promo.png':'close.png'}'))
                  ),
                ),
                title: Text('System',style: TextStyle(fontSize: 15*AppConstants.text),),
                subtitle: Text('Your booking #1234 has been...',style: TextStyle(fontSize: 13*AppConstants.text),),
              );
            })
          ],
        ),
      ),
    ));
  }
}
