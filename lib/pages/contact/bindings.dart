import 'package:audio_video/pages/contact/controller.dart';
import 'package:get/get.dart';

class ContactBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut<ContactController>(() => ContactController());
  }

}