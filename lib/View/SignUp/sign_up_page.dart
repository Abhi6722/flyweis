import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rajiv_cab_user_app/Constants/Konstants.dart';
import 'package:rajiv_cab_user_app/View/HomePage/home_page.dart';
import 'package:rajiv_cab_user_app/View/LoginPage/login_page.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  // var jsonResponse;
  // var data1;

  // Register(
  //   String name,
  //   String phone,
  //   String email,
  //   String gender,
  //   String datebirth,
  //   String password,
  // ) async {
  //   // controller.isLoading.value = true;
  //   String url = "https://polar-crag-62748.herokuapp.com/api/users/register";
  //   Map body = {
  //     "fullName": name,
  //     "phone": phone,
  //     "email": email,
  //     'gender': gender,
  //     'birthDate': datebirth,
  //     'password': password,
  //   };
  //   print(body);

  //   var res = await http.Client().post(Uri.parse(url), body: body);

  //   var data1 = jsonDecode(res.body);
  //   // controller.isLoading.value = false;
  //   print(data1);
  //   print(res.statusCode);

  //   if (res.statusCode == 201) {
  //     // _registerController.writeotp = data['otp'];
  //     // print('read phoen is $data1');
  //     // print(data['token']);
  //     // SharedToken().token_save(data['token']);

  //     // controller.isLoading.value = false;
  //     print("Response status: ${res.statusCode}");

  //     Get.to(ServiceUnavailableScreen());
  //   }
  //   if (res.statusCode == 400) {
  //     var data = jsonDecode(res.body);
  //     // setState(() {
  //     //   isLoading = false;
  //     // });
  //     data1 = data['message'];
  //     print(data1);
  //     Get.snackbar("Error", data1.toString(),
  //         duration: const Duration(seconds: 3));
  //   }
  //   if (res.statusCode == 500) {
  //     var data = jsonDecode(res.body);
  //     // setState(() {
  //     //   isLoading = false;
  //     // });
  //     data1 = data['message'];
  //     print(data1);
  //     Get.snackbar("Error", data1.toString(),
  //         duration: const Duration(seconds: 3));
  //   }
  //   // else {
  //   //   Get.snackbar("Error", 'Please give correct credentials');
  //   // }
  // }
RxBool isvisible=false.obs;
RxBool isvisible2=false.obs;
RxBool isDropdown=false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        // backgroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color(0x00000000),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
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
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(100),
                  // ),
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage('assets/images/small_Landing.png'),
                      fit: BoxFit.contain)),
            ),
            SizedBox(height: AppConstants.height*0.03,),
            Container(
              height:AppConstants.height*0.06,
              width: AppConstants.width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                // controller: _registerController.name,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Full Name',
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),
            SizedBox(height: AppConstants.height*0.03,),
            Container(
              height:AppConstants.height*0.06,
              width: AppConstants.width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                // controller: _registerController.phone,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Phone Number',
                    // hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),SizedBox(height: AppConstants.height*0.03,),
            Container(
              height:AppConstants.height*0.06,
              width: AppConstants.width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                // controller: _registerController.email,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Email id',
                    // hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),SizedBox(height: AppConstants.height*0.03,),
            Container(
              height:AppConstants.height*0.06,
              width: AppConstants.width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                      isDropdown.value=!isDropdown.value;
                    }, icon: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.grey,)),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Select gender',
                    // hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),SizedBox(height: AppConstants.height*0.03,),
            Container(
              height:AppConstants.height*0.06,
              width: AppConstants.width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Image.asset('assets/images/calendar.png'),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Date of birth',
                    // hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),SizedBox(height: AppConstants.height*0.03,),
            Obx(()=>Container(
              height:AppConstants.height*0.06,
              width: AppConstants.width*0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: Colors.grey)),
              child: TextField(
                obscureText: isvisible.isFalse?true:false,
                // enabled: false,
                // controller: _registerController.password,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: (){
                          isvisible.value=!isvisible.value;
                        },
                        icon: Icon(isvisible.isFalse?Icons.visibility_off:Icons.visibility,color: Colors.grey,)),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Enter password',
                    // hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            )),
            SizedBox(height: AppConstants.height*0.03,),
            Obx(()=>Center(
              child: Container(
                height:AppConstants.height*0.06,
                width: AppConstants.width*0.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: Colors.grey)),
                child: TextField(
                  obscureText: isvisible2.isFalse?true:false,
                  // enabled: false,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: (){
                            isvisible2.value=!isvisible2.value;
                          },
                          icon: Icon(isvisible2.isFalse?Icons.visibility_off:Icons.visibility,color: Colors.grey,)),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'Confirm password',
                      // hintStyle: txtGrey_Light_Normal,
                      contentPadding: EdgeInsets.all(16)),
                ),
              ),
            )),
            SizedBox(height: AppConstants.height*0.03,),
            SizedBox(
              width: AppConstants.width*0.9,
              height: AppConstants.height*0.06,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor: Color(0xfff52d56)
                  ),
                  onPressed: (){
                    Get.to(HomePage());
                    // isallow.value=true;
                    // showMyDialogAllowLocation(context);
                  }, child: Text('Create Account',style: TextStyle(fontSize:15*AppConstants.text,color: Colors.white),)),
            ),
            SizedBox(height: AppConstants.height*0.03,),

            Center(
              child: SizedBox(
                width: AppConstants.width*0.9,
                height: AppConstants.height*0.07,
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      backgroundColor:Colors.white,
                      surfaceTintColor: Colors.white,
                      shape:
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          scale: 1,
                        ),
                        SizedBox(width: AppConstants.width*0.01,),
                        const Text('Sign in with Google',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: AppConstants.height*0.03,),
            Center(
              child: SizedBox(
                width: AppConstants.width*0.9,
                height: AppConstants.height*0.07,
                child: ElevatedButton(

                  style:ElevatedButton.styleFrom(
                      backgroundColor:Color(0xfff52d56),
                      shape:
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {},
                  child: Center(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/fb.png',

                          // scale: 1,
                        ),
                        SizedBox(width: AppConstants.width*0.01,),
                        const Text('Sign in with Facebook',style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                ),
                SizedBox(width: AppConstants.width*0.02,),
                TextButton(
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                  child: Text('Sign In',style: TextStyle(color: Colors.black),),

                )],
            ),
            SizedBox(height: AppConstants.height*0.13,),
            Center(
              child: Text('By signing up you have agreed to our',
                style: TextStyle(
                  color: Colors.black,
                ),),
            ),
            Center(
              child: Flex(direction: Axis.vertical, children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: ' TERMS OF USE',
                      style: TextStyle(color: Colors.black),
                      children: [

                        TextSpan(
                            text: ' and',style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' PRIVACY POLICY',
                            style: TextStyle(color: Colors.black))
                      ]),
                )
              ]),
            )
    ])
    ));
  }
}