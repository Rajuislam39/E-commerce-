

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:groupproject/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:groupproject/src/features/authentication/screens/splash_screen/splash_screen.dart';

class RoutesClass{

  static String  splash="/";
  static String onboard="/onboard";
  static String getOnBoarding()=>onboard;
  static String getSplash()=>splash;

  static List<GetPage> routes=[
    GetPage(page: ()=>SplashScreen(),name: splash),
    GetPage(page: ()=>OnBoardingScreen(),name: onboard)

  ];

}