import 'dart:async';

import 'package:audio_video/common/routes/names.dart';
import 'package:audio_video/pages/message/state.dart';
import 'package:get/get.dart';


class MessageController extends GetxController{
  MessageController();
  final state = MessageState();

  Future<void> goProfile() async {
    await Get.toNamed(AppRoutes.Profile);
  }
  Future<void> goContact() async {
    await Get.toNamed(AppRoutes.Contact);
  }

}