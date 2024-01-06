import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/HomePage/home_page.dart';
import 'package:rajiv_cab_user_app/View/LoginPage/login_page.dart';

import '../../controllers/auth_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final RxBool isvisible = false.obs;
  final RxBool isvisible2 = false.obs;
  final RxBool isDropdown = false.obs;

  final AuthController _registerController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color(0x00000000),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage('assets/images/small_Landing.png'),
                    fit: BoxFit.contain),
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.03,
            ),
            Container(
              height: AppConstants.height * 0.06,
              width: AppConstants.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: Colors.grey),
              ),
              child: TextField(
                controller: _registerController.nameController,
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: 'Full Name',
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.03,
            ),
            Container(
              height: AppConstants.height * 0.06,
              width: AppConstants.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: Colors.grey),
              ),
              child: TextField(
                controller: _registerController.phoneNumberController,
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: 'Phone Number',
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.03,
            ),
            Container(
              height: AppConstants.height * 0.06,
              width: AppConstants.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: Colors.grey),
              ),
              child: TextField(
                controller: _registerController.emailController,
                decoration: const InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: 'Email id',
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.03,
            ),
        Container(
          height: AppConstants.height * 0.06,
          width: AppConstants.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(color: Colors.grey),
          ),
          child: Obx(() => DropdownButtonFormField<String>(
            value: _registerController.selectedGender.value.isNotEmpty
                ? _registerController.selectedGender.value
                : null,
            onChanged: (String? newValue) {
              if (newValue != null) {
                _registerController.selectGender(newValue);
              }
            },
            items: _registerController.genderOptions
                .map((String gender) => DropdownMenuItem<String>(
              value: gender,
              child: Text(gender),
            ))
                .toList(),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(16),
              border: InputBorder.none,
              hintText: _registerController.selectedGender.value.isEmpty
                  ? 'Select a Gender'
                  : null,
            ),
          )),
        ),
        SizedBox(
              height: AppConstants.height * 0.03,
            ),
            Container(
              height: AppConstants.height * 0.06,
              width: AppConstants.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(color: Colors.grey),
              ),
              child: TextField(
                readOnly: true,
                onTap: () async {
                  _registerController.selectDate(context);
                },
                decoration: InputDecoration(
                  suffixIcon: Image.asset('assets/images/calendar.png'),
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: _registerController.selectedDate.value.isNotEmpty
                      ? _registerController.selectedDate.value.toString()
                      : 'Date of birth',
                  contentPadding: const EdgeInsets.all(16),
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.03,
            ),
            Obx(
              () => Container(
                height: AppConstants.height * 0.06,
                width: AppConstants.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  obscureText: isvisible.isFalse ? true : false,
                  // enabled: false,
                  controller: _registerController.passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          isvisible.value = !isvisible.value;
                        },
                        icon: Icon(
                          isvisible.isFalse
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        )),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Enter password',
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.03,
            ),
            Obx(
              () => Center(
                child: Container(
                  height: AppConstants.height * 0.06,
                  width: AppConstants.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(color: Colors.grey)),
                  child: TextField(
                    controller: _registerController.confirmPasswordController,
                    obscureText: isvisible2.isFalse ? true : false,
                    // enabled: false,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            isvisible2.value = !isvisible2.value;
                          },
                          icon: Icon(
                            isvisible2.isFalse
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          )),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'Confirm password',
                      contentPadding: const EdgeInsets.all(16),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.03,
            ),
            SizedBox(
              width: AppConstants.width * 0.9,
              height: AppConstants.height * 0.06,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: const Color(0xfff52d56)),
                onPressed: () {
                  _registerController.registerUser();
                  // Get.to(const HomePage());
                  // isallow.value=true;
                  // showMyDialogAllowLocation(context);
                },
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      fontSize: 15 * AppConstants.text, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.03,
            ),
            Center(
              child: SizedBox(
                width: AppConstants.width * 0.9,
                height: AppConstants.height * 0.07,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    surfaceTintColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          scale: 1,
                        ),
                        SizedBox(
                          width: AppConstants.width * 0.01,
                        ),
                        const Text(
                          'Sign in with Google',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppConstants.height * 0.03,
            ),
            Center(
              child: SizedBox(
                width: AppConstants.width * 0.9,
                height: AppConstants.height * 0.07,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfff52d56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/fb.png',
                        ),
                        SizedBox(
                          width: AppConstants.width * 0.01,
                        ),
                        const Text(
                          'Sign in with Facebook',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                ),
                SizedBox(
                  width: AppConstants.width * 0.02,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(
              height: AppConstants.height * 0.13,
            ),
            const Center(
              child: Text(
                'By signing up you have agreed to our',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Center(
              child: Flex(
                direction: Axis.vertical,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: ' TERMS OF USE',
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: ' and',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: ' PRIVACY POLICY',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
