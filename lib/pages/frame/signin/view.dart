import 'package:audio_video/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:audio_video/pages/frame/signin/controller.dart';

import 'index.dart';

class SignInPage extends GetView<SignInController>{
  const SignInPage({super.key});

  Widget _buildLogo(){
    return Container(
      margin: EdgeInsets.only(top: 100.h, bottom: 80.h),
      child: Text("Audio Video",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 34.sp
      ),),

    );
  }
  Widget _buildOrWidget(){
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Divider(
              indent: 50,
              height: 2.h,
              color: AppColors.primarySecondaryElementText,
            ),
          ),
          const Text("   or   "),
          Expanded(
            child: Divider(
              endIndent: 50,
              height: 2.h,
              color: AppColors.primarySecondaryElementText,
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildSignUp(){
    return  Column(
      children: [
      Text("Don't have an account",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: AppColors.primaryText,
          fontWeight: FontWeight.normal,
          fontSize: 12.sp
      ),
    ),
    GestureDetector(
    child: Text(
    "Sign up now",
    textAlign: TextAlign.center,
    style: TextStyle(
    color: AppColors.primaryElement,
    fontWeight: FontWeight.normal,
    fontSize: 12.sp
    ),
    ),onTap: (){
      print("....sign up from here...");
    },)
      ]
    );
  }
  Widget _buildThirdPartyLogin(String loginType, String logo){
    return GestureDetector(
      child: Container(
        width: 295.w,
        height: 44.h,
        margin: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1)
            )
          ]
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20.w, right: 30.w),
              child: Image.asset("assets/icons/$logo.png"),
            ),
            Container(
              child: Text("Sign in with $loginType",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.primaryText,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.sp
                ),),
            )
          ],
        ),
      ),
      onTap: (){
        handleSignIn("google");
        // print("...sign up third party ${loginType} from here... ");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildLogo(),
            _buildThirdPartyLogin("Google", "google"),
            _buildThirdPartyLogin("Facebook", "facebook"),
            _buildThirdPartyLogin("Email", "mail"),
            _buildOrWidget(),
            _buildThirdPartyLogin("Phone Number", "phone"),
            SizedBox(height: 30.h,),
            _buildSignUp(),

              ],
            ),

        ),
    );
  }
}
