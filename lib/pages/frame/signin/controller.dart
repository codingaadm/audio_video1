import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:audio_video/common/entities/entities/user.dart';
import 'package:audio_video/common/routes/names.dart';
import 'package:audio_video/common/store/user.dart';
import 'package:audio_video/common/widgets/toast.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../common/Apis/user.dart';
import 'index.dart';


class SignInController extends GetxController{
  SignInController();
  final state = SignInState();


}
final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'openid'
    ]
);
Future<void> handleSignIn(String type) async {
  try{
    if(type == "phone number"){
      print("login with phone number");
    }else if(type == "google"){
     var user = await _googleSignIn.signIn();
     if(user != null){
       final gAuth = await user.authentication;
       final credential = GoogleAuthProvider.credential(
         idToken: gAuth.idToken,
         accessToken: gAuth.accessToken
       );
       await FirebaseAuth.instance.signInWithCredential(credential);

       String? displayName = user.displayName;
       String email = user.email;
       String id = user.id;
       String photoUrl = user.photoUrl??"assets/icons/google.png";
       LoginRequestEntity loginPanelListRequestEntity = LoginRequestEntity();
       loginPanelListRequestEntity.avatar = photoUrl;
       loginPanelListRequestEntity.name = displayName;
       loginPanelListRequestEntity.email = email;
       loginPanelListRequestEntity.open_id = id;
       loginPanelListRequestEntity.type = 2;
       print(jsonEncode(loginPanelListRequestEntity));
       asyncPostAllData(loginPanelListRequestEntity);
     }
    }
    else{
      if (kDebugMode){
        print("...login type not sure....");
      }
      
    }
  }catch(e){
    if(kDebugMode){
      print('login error $e');
    }
  }
}
asyncPostAllData(LoginRequestEntity loginRequestEntity) async {

  EasyLoading.show(
    indicator: const CircularProgressIndicator(),
    maskType: EasyLoadingMaskType.clear,
    dismissOnTap: true

  );
  var result = await UserAPI.Login(params: loginRequestEntity);
  if(result.code==0){
    await UserStore.to.saveProfile(result.data!);
    EasyLoading.dismiss();

  }else{
    EasyLoading.dismiss();
    toastInfo(msg: "Internet Error");
  }
  Get.offAllNamed(AppRoutes.Message);
}