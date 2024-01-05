import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/View/SelectYourCategory/selectyourcategory.dart';

import '../../Constants/Konstants.dart';

class WelcomeToTripRiderAllow extends StatelessWidget {
  WelcomeToTripRiderAllow({super.key});

  final RxBool isallow = false.obs;
  void showMyDialogAllowLocation(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: const Center(
              child: Icon(Icons.location_on, color: Colors.grey, size: 20)),
          content: SizedBox(
            height: AppConstants.height * 0.06,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Allow Trip Rider to access this device’s',
                  style: TextStyle(fontSize: 13 * AppConstants.text),
                ),
                Text(
                  'location?',
                  style: TextStyle(fontSize: 13 * AppConstants.text),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.back();
                      showMyDialogAllowLoctaionToContinue(context);
                    },
                    child: const Text(
                      'Allow only while using the app',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      isallow.value = false;
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: const Text(
                      'Deny',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  void showMyDialogAllowLoctaionToContinue(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: SizedBox(
            height: AppConstants.height * 0.12,
            child: const Column(
              children: <Widget>[
                Text('To continue, turn on device location,'),
                Text('which uses Google’s location service'),
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      isallow.value = false;
                      Get.back();
                    },
                    child: const Text(
                      'No,thanks',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(SelectYourCategory());
                    },
                    child: const Text(
                      'Ok',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: AppConstants.height * 0.15,
            ),
            SizedBox(
              width: AppConstants.width * 0.8,
              height: AppConstants.height * 0.3,
              child: Image.asset(
                'assets/images/permission_allow.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.06,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppConstants.width * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Trip Rider',
                    style: TextStyle(
                        fontSize: 15 * AppConstants.text,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: AppConstants.height * 0.01,
                  ),
                  Text(
                    'Have a hassle-free booking experience by giving us the ',
                    style: TextStyle(
                      fontSize: 13 * AppConstants.text,
                    ),
                  ),
                  Text('following permissions.',
                      style: TextStyle(
                        fontSize: 13 * AppConstants.text,
                      )),
                  SizedBox(
                    height: AppConstants.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.circle, color: Colors.black, size: 5),
                      SizedBox(
                        width: AppConstants.width * 0.01,
                      ),
                      Text('Location (for finding available rides)',
                          style: TextStyle(
                            fontSize: 13 * AppConstants.text,
                          )),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.1,
            ),
            Obx(() => isallow.isFalse
                ? SizedBox(
                    width: AppConstants.width * 0.85,
                    height: AppConstants.height * 0.06,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: const Color(0xfff52d56)),
                        onPressed: () {
                          isallow.value = true;
                          showMyDialogAllowLocation(context);
                        },
                        child: Text(
                          'Allow',
                          style: TextStyle(
                              fontSize: 15 * AppConstants.text,
                              color: Colors.white),
                        )),
                  )
                : const SizedBox())
          ],
        ),
      ),
    );
  }
}
