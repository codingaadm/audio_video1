import 'package:audio_video/pages/frame/welcome/index.dart';
import 'package:audio_video/pages/profile/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../theme/theme_colors.dart';

class ProfilePage extends GetView<ProfileController>{
  const ProfilePage({super.key});

  AppBar _buildAppBar(){
    return AppBar(
      title: Text("Profile",
        style: TextStyle(
            color: AppColors.primaryText,
            fontSize: 16.sp,
            fontWeight: FontWeight.normal),
      ),
    );
  }
  Widget _buildProfilePhoto(){
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120.w,
          height: 120.w,
          decoration: BoxDecoration(
            color: AppColors.primarySecondaryBackground,
            borderRadius: BorderRadius.all(Radius.circular(60.w)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1)
              )
            ]
          ),
          child: Image(
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
              image: const AssetImage("assets/icons/avatar.png")),
        ),
        Positioned(
          bottom: 0.w,
            right: 0.w,
            height: 35.w,
            child: GestureDetector(
              child: Container(
                height: 35.w,
                width: 35.w,
                padding: EdgeInsets.all(7.w),
                decoration: BoxDecoration(
                  color: AppColors.primaryElement,
                  borderRadius: BorderRadius.all(Radius.circular(40.w))
                ),
                child: const Icon(Icons.edit,
                color: Colors.grey,),
              ),

            )
        )
      ],
    );
  }
  Widget _buildCompleteBtn(){
    return Stack(
      children: [
        GestureDetector(
        child: Container(
          width: 295.w,
          height: 44.h,
          margin: EdgeInsets.only(top: 40.w,bottom: 20.w),
          decoration: BoxDecoration(
              color: AppColors.primaryElement,
              borderRadius: BorderRadius.all(Radius.circular(5.w))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Complete",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.primaryElementText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      )
      ],
    );
  }
  Widget _buildLogoutBtn(){
    return GestureDetector(
      child: Container(
        width: 295.w,
        height: 44.h,
        margin: EdgeInsets.only(top: 0.w,bottom: 20.w),
        decoration: BoxDecoration(
            color: AppColors.primarySecondaryElementText,
            borderRadius: BorderRadius.all(Radius.circular(5.w))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Log Out",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.primaryElementText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      onTap: (){
        Get.defaultDialog(
          title: "Are you sure you want to log out?",
          content: Container(),
          onConfirm: (){
            controller.goLogOut();
          },
          onCancel: (){

          },
          textConfirm: "Confirm",
          textCancel: "Cancel",
          confirmTextColor: Colors.white
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SafeArea(child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildProfilePhoto(),
                  _buildCompleteBtn(),
                  _buildLogoutBtn()
                ],
              ),
            ),

          )
        ],
      ))
    );
  }
}
