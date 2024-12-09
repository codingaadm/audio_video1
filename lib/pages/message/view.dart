import 'package:audio_video/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../common/routes/routes.dart';
import 'controller.dart';
import 'index.dart';
import '../../pages/contact/controller.dart';


class MessagePage extends GetView<MessageController>{
  const MessagePage({super.key});

  Widget _headBar(){
    return Stack(
      children: [
        Center(
        child: Container(
          width: 320.w,
          height: 44.w,
          margin: EdgeInsets.only( bottom: 20.h,top: 20.h),
          child: Row(
            children: [
              GestureDetector(
                child: Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: AppColors.primarySecondaryBackground,
                    borderRadius: BorderRadius.all(Radius.circular(22.h)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, -1),

                      )
                    ]
                  ),
                  child: controller.state.head_detail.value.avatar == null?
                      Image(image: AssetImage("assets/icons/avatar.png"),
                      height: 44,
                      width: 44,):
                      Text("Hi"),
                ),
                onTap: (){
                  controller.goProfile();

                },
              ),
              Positioned(
                  bottom: 5.w,
                  right: 0.w,
                  height: 14.w,
                  child: Container(
                    height: 14.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2.w,
                        color: AppColors.primaryElementText,
                      ),
                      color: AppColors.primaryElementStatus,
                      borderRadius: BorderRadius.all(Radius.circular(12.w))
                    ),
                  ),
              )
            ],
          ),
        ),

      ),]
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                title: _headBar(),
              )

            ],
          ),
          Positioned(
            bottom: 30.h,
              right: 60.w  ,
              child: Container(
                padding: EdgeInsets.only(left: 20.w, bottom: 10.h),
                  child: Row(
                    children: [
                      GestureDetector(
                        child: Container(
                          color: Colors.blue,
                          height: 40.w,
                          width: 40.w,
                          child: Icon(Icons.message_outlined),
                        ),
                        onTap: (){
                         controller.goContact();
                        }
                      )
                    ],
                  ),
              ))
        ]
      ),
    )
    );
  }
}
