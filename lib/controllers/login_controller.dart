import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../Constants/Konstants.dart';
import '../View/OTPPage/otp_page.dart';

class LoginController {
  TextEditingController phoneNumberController = TextEditingController();
  RxBool isLoading = false.obs;

  Future<void> loginUser() async {
    isLoading.value = true;
    try {
      String phoneNumber = phoneNumberController.text;
      final url = Uri.parse('${AppConstants.apiURL}/user/login');
      final response = await http.post(
        url,
        body: jsonEncode({'mobileNumber': phoneNumber}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        print(responseData);
        isLoading.value = false;
        Get.to(() => OtpScreen());
        Get.snackbar(
          'Success',
          'OTP Sent Successful',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
        isLoading.value = false;
        Get.snackbar(
          'Error',
          'Failed to send OTP',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
        );
      }
    } catch (e) {
      print('Exception: $e');
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Exception occurred',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
      );
    }
  }
}
