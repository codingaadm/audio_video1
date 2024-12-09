import 'package:audio_video/common/routes/names.dart';
import 'package:audio_video/pages/frame/welcome/state.dart';
import 'package:get/get.dart';


class WelcomeController extends GetxController{
  WelcomeController();
  final title = 'Audio Video';
  final state = WelcomeState();


  @override
  void onReady(){
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () => Get.offAllNamed(AppRoutes.Message));
  }
}
