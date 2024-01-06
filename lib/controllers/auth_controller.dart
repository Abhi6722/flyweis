import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../Constants/Konstants.dart';
import '../View/HomePage/home_page.dart';
import '../View/OTPPage/otp_page.dart';

class AuthController {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  RxBool isLoading = false.obs;
  final RxString selectedDate = ''.obs;
  final RxString selectedGender = RxString('');
  String userId = '';

  void selectGender(String gender) {
    selectedGender.value = gender;
  }
  final List<String> genderOptions = ['Female', 'Male', 'Other'];

  void selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      final formattedDate = DateFormat('dd-MM-yyyy').format(picked);
      selectedDate.value = formattedDate;
    } else {
      selectedDate.value = '';
    }
  }

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

  Future<void> verifyOTP() async {
    isLoading.value = true;
    try {
      String phoneNumber = phoneNumberController.text;
      String otp = otpController.text;
      final url = Uri.parse('${AppConstants.apiURL}/user/verify/otp');
      final response = await http.post(
        url,
        body: jsonEncode({'mobileNumber': phoneNumber, 'otp': otp}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        print(responseData);
        Get.offAll(() => const HomePage());
        isLoading.value = false;
        Get.snackbar(
          'Success',
          'Login Successful',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
        isLoading.value = false;
        Get.snackbar(
          'Error',
          'Failed to verify OTP',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
        );
      }
    } catch (e) {
      print('Exception: $e');
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Exception occurred during OTP verification',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
      );
    }
  }

  Future<void> resendOTP() async {
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
        Get.snackbar(
          'Success',
          'OTP Sent Successful',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
        Get.snackbar(
          'Error',
          'Failed to send OTP',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
        );
      }
    } catch (e) {
      print('Exception: $e');
      Get.snackbar(
        'Error',
        'Exception occurred',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
      );
    }
  }

  Future<void> registerUser() async {
    isLoading.value = true;
    try {
      String phoneNumber = phoneNumberController.text;
      final url = Uri.parse('${AppConstants.apiURL}/user/register');
      final response = await http.post(
        url,
        body: jsonEncode({'mobileNumber': phoneNumber}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        print(responseData);
        userId = responseData['user']['_id'];
        print(userId);
        isLoading.value = false;
        Get.to(() => OtpScreen());
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

  Future<void> verifyRegisterOTP() async {
    isLoading.value = true;
    try {
      String phoneNumber = phoneNumberController.text;
      String otp = otpController.text;
      final url = Uri.parse('${AppConstants.apiURL}/user/verify/otp');
      final response = await http.post(
        url,
        body: jsonEncode({'mobileNumber': phoneNumber, 'otp': otp}),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        print(responseData);
        bool success = await updateUserProfile(); // Await the profile update function

        if (success) {
          Get.to(() => OtpScreen());
          Get.snackbar(
            'Success',
            'OTP Sent Successful',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
          );
        } else {
          isLoading.value = false;
          Get.snackbar(
            'Error',
            'Failed to Register User',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
          );
        }
        Get.offAll(() => const HomePage());
        isLoading.value = false;
        Get.snackbar(
          'Success',
          'Login Successful',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
        );
      } else {
        print('Request failed with status: ${response.statusCode}');
        isLoading.value = false;
        Get.snackbar(
          'Error',
          'Failed to verify OTP',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
        );
      }
    } catch (e) {
      print('Exception: $e');
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Exception occurred during OTP verification',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
      );
    }
  }

  Future<bool> updateUserProfile() async {
    try {
      String name = nameController.text;
      String email = emailController.text;
      String phone = phoneNumberController.text;

      final url = Uri.parse('${AppConstants.apiURL}/user/detail/$userId');
      final response = await http.patch(
        url,
        body: jsonEncode({'name': name, 'email': email, 'mobileNumber': phone}),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        print('Profile updated successfully');
        return true;
      } else {
        print('Failed to update profile: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Exception: $e');
      return false;
    }
  }
}
