import 'package:audio_video/common/routes/names.dart';
import 'package:audio_video/common/store/user.dart';
import 'package:audio_video/pages/profile/state.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';


class ProfileController extends GetxController{
  ProfileController();
  final title = 'Audio Video';
  final state = ProfileState();



  Future<void> goLogOut() async {
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }
}
