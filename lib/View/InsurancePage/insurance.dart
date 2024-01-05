import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/View/InsuranceGridPage/insurance_grid_page.dart';
import 'package:rajiv_cab_user_app/View/MyPoliciesPage/my_policies_page.dart';

import '../../Constants/Konstants.dart';
class Insurance extends StatelessWidget {
  const Insurance({super.key});
  Widget buildGridItemContent(int index) {
    return InkWell(
      onTap: (){
        Get.to(InsuranceGridPage());
      },
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset('assets/images/insurance$index.png',
                  fit: BoxFit.fill,)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hospital Cash',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15 * AppConstants.text),
                  ),
                  Text('Get Hospital Cash Cover of ₹1000/day for 100... ',
                      style: TextStyle(fontSize: 10 * AppConstants.text)),
                  Text('₹44/month',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14 * AppConstants.text)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                            "Insurance",
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
              ), SizedBox(
                width: AppConstants.width,
                height:AppConstants.height*0.2,
                child: Image.asset(

                    'assets/images/insurancetitle.png',fit: BoxFit.fill,),
              ),
              Container(
                color: Color(0xffefefef),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Image.asset('assets/images/document.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'View Article Policy',
                              style: TextStyle(
                                  color: Color(0xfff52d56),
                                  fontSize: 15 * AppConstants.text),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                          onTap: (){
                            Get.to(MyPoliciesPage());
                          },
                          child: Image.asset('assets/images/arrowbutton.png'))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Stay ahead of monsoon',
                      style: TextStyle(
                          fontSize: 15 * AppConstants.text,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Secure yourself with health insurances',
                      style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                      ),
                    )
                  ],
                ),
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // crossAxisSpacing: 8.0,
                  // mainAxisSpacing: 8.0,
                ),
                itemCount: 3,
                itemBuilder: (BuildContext context, int itemindex) {
                  return buildGridItemContent(itemindex);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Protect your net Trip rides',
                      style: TextStyle(
                          fontSize: 15 * AppConstants.text,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Active now, pay only when you ride',
                      style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: AppConstants.width,
                child: Image.asset('assets/images/videoimage.png',fit: BoxFit.fill,),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Trip Rider Insurance plans',
                      style: TextStyle(
                          fontSize: 15 * AppConstants.text,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Plenty of reason to get Trip Rider Insurance',
                      style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: AppConstants.height*0.03,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle,color: Colors.black,size:10,),
                        SizedBox(width:AppConstants.width*0.02),
                        Text(
                          'Toller made plans',
                          style: TextStyle(
                              fontSize: 15 * AppConstants.text,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'To best suit your needs',
                      style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle,color: Colors.black,size:10,),
                        SizedBox(width:AppConstants.width*0.02),
                        Text(
                          'Small pact, big impact',
                          style: TextStyle(
                              fontSize: 15 * AppConstants.text,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' Subscribe to monthly quarterly plans ',
                      style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle,color: Colors.black,size:10,),
                        SizedBox(width:AppConstants.width*0.02),
                        Text(
                          'Fully digitized process',
                          style: TextStyle(
                              fontSize: 15 * AppConstants.text,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Insta-assurance for insta generration',
                      style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle,color: Colors.black,size:10,),
                        SizedBox(width:AppConstants.width*0.02),
                        Text(
                          'Pocket-friendly pricing',
                          style: TextStyle(
                              fontSize: 15 * AppConstants.text,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Your money is better in your wallet',
                      style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle,color: Colors.black,size:10,),
                        SizedBox(width:AppConstants.width*0.02),
                        Text(
                          'Minimal documentation',
                          style: TextStyle(
                              fontSize: 15 * AppConstants.text,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Not recommended for avid readers',
                      style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
