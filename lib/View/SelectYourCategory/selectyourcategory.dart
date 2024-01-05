import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/LoginPage/login_page.dart';

class SelectYourCategory extends StatelessWidget {

  SelectYourCategory({super.key});
  final RxString selectedOption = ''.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: AppConstants.width * 0.7,
              height: AppConstants.height * 0.25,
              child: Image.asset(
                'assets/images/selectcategory.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please Select your category',
                  style: TextStyle(
                      fontSize: 17 * AppConstants.text,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: AppConstants.height * 0.04,
            ),
            Obx(() => Padding(
                  padding: EdgeInsets.only(left: AppConstants.width * 0.03),
                  child: Column(
                    children: [
                      RadioListTile(
                        activeColor: Colors.black,
                        title: const Text('Senior Citizen'),
                        value: 'Senior Citizen',
                        groupValue: selectedOption.value,
                        onChanged: (value) {
                          // setState(() {
                          selectedOption.value = value.toString();
                          // });
                        },
                      ),
                      RadioListTile(
                        activeColor: Colors.black,
                        title: const Text('Student'),
                        value: 'Student',
                        groupValue: selectedOption.value,
                        onChanged: (value) {
                          // setState(() {
                          selectedOption.value = value.toString();
                          // });
                        },
                      ),
                      RadioListTile(
                        activeColor: Colors.black,
                        title: const Text('Armed Forces'),
                        value: 'Armed Forces',
                        groupValue: selectedOption.value,
                        onChanged: (value) {
                          // setState(() {
                          selectedOption.value = value.toString();
                          // });
                        },
                      ),
                      RadioListTile(
                        activeColor: Colors.black,
                        title: const Text('Working Women'),
                        value: 'Working Women',
                        groupValue: selectedOption.value,
                        onChanged: (value) {
                          // setState(() {
                          selectedOption.value = value.toString();
                          // });
                        },
                      ),
                      RadioListTile(
                        activeColor: Colors.black,
                        title: const Text('Other'),
                        value: 'Other',
                        groupValue: selectedOption.value,
                        onChanged: (value) {
                          // setState(() {
                          selectedOption.value = value.toString();
                          // });
                        },
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: AppConstants.height * 0.15,
            ),
            SizedBox(
              width: AppConstants.width * 0.85,
              height: AppConstants.height * 0.06,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color(0xfff52d56)),
                  onPressed: () {
                    Get.to(() => LoginPage());
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                        fontSize: 15 * AppConstants.text, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
