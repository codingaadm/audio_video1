import 'dart:convert';
import 'package:audio_video/common/entities/entities/user.dart';
import 'package:audio_video/common/store/storage.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';
import 'values.dart';


class UserStore extends GetxController{
  static UserStore get to => Get.find();

  final _isLogin = false.obs;

  String token = '';

  final _profile = UserItem().obs;

  bool get isLogin => _isLogin.value;
  UserItem get profile => _profile.value;
  bool get hasToken => token.isNotEmpty;

  @override
  void onInit(){
    super.onInit();
    token = StorageServices.to.getString(STORAGE_USER_TOKEN_KEY);
    var profileOffline = StorageServices.to.getString(STORAGE_USER_PROFILE_KEY);
    print(profileOffline);
    if (profileOffline.isNotEmpty){
      _isLogin.value = true;
      _profile(UserItem.fromJson(jsonDecode(profileOffline)));
    }
  }

  Future<void> setToken(String value) async {
    await StorageServices.to.setString(STORAGE_USER_TOKEN_KEY, value);
    token = value;
  }

  Future<String> getProfile() async{
    if(token.isEmpty) return "";
    return StorageServices.to.getString(STORAGE_USER_PROFILE_KEY);
  }
  Future<void> saveProfile(UserItem profile) async{
    _isLogin.value = true;
    StorageServices.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
    _profile(profile);
    setToken(profile.access_token!);
  }

  Future<void> onLogout() async {
    await StorageServices.to.remove(STORAGE_USER_TOKEN_KEY);
    await StorageServices.to.remove(STORAGE_USER_PROFILE_KEY);
    _isLogin.value = false;
    token = '';
    Get.offAllNamed(AppRoutes.SIGN_IN);

  }
}