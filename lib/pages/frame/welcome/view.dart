import 'package:audio_video/pages/frame/welcome/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../theme/theme_colors.dart';

class WelcomePage extends GetView<WelcomeController>{
  const WelcomePage({super.key});

  Widget _buildPageHeadTitle(String title){
    return Container(
      margin: const EdgeInsets.only(top: 350),
      child: Text(
        textAlign: TextAlign.center,
        title,
        style: TextStyle(
          color: AppColors.primaryElementText,
          fontSize: 45.sp,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: SizedBox(
        width: 360.w,
        height: 780.h,
        child: _buildPageHeadTitle(controller.title),
      ),
    );
  }
}
