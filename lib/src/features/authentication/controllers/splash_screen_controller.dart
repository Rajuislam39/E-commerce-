
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:groupproject/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:groupproject/src/routing/routes.dart';


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
    Get.toNamed(RoutesClass.getOnBoarding());
    // Get.to(const OnBoardingScreen());
  }

}