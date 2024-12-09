import 'package:audio_video/common/store/storage.dart';
import 'package:audio_video/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'common/store/user.dart';

class Global {
  static Future init() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
    );
    await Get.putAsync<StorageServices>(() => StorageServices().init());
    Get.put<UserStore>(UserStore());
  }
}