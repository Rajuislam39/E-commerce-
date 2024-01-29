
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:groupproject/src/features/authentication/screens/welcome/welcome.dart';

class SplashScreenController extends GetxController{
static SplashScreenController get find=>Get.find();
  RxBool animate=false.obs;

  @override
  void onInit() {
    startAnimation();
    super.onInit();
  }
  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    animate.value=true;
    await Future.delayed(Duration(milliseconds: 3000));
    Get.to(const Welcome());
  }

}