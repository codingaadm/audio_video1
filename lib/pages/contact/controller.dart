import 'package:audio_video/common/Apis/contact.dart';
import 'package:audio_video/common/entities/entities/contact.dart';
import 'package:audio_video/pages/contact/index.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';


class ContactController extends GetxController{
  ContactController();
  final state = ContactState();

  @override
  void onReady(){
    super.onReady();
    asyncLoadAllData();

  }

  void goChat(ContactItem item){


  }

  asyncLoadAllData() async {
    EasyLoading.show(
      indicator: CircularProgressIndicator(),
      maskType: EasyLoadingMaskType.clear,
      dismissOnTap: true,
    );
    state.contactList.clear();
    var result = await ContactAPI.post_contact();
    if (kDebugMode) {
      print(result.data!);
    }
    if(result.code==0){
      state.contactList.addAll(result.data!);
    }
    EasyLoading.dismiss();
  }

}