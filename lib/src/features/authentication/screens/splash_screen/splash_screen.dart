
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groupproject/src/constants/colors.dart';
import 'package:groupproject/src/constants/image_strings.dart';
import 'package:groupproject/src/constants/sizes.dart';
import 'package:groupproject/src/constants/text_strings.dart';
import 'package:groupproject/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
 SplashScreen({super.key});

SplashScreenController splashScreenController=Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
splashScreenController.startAnimation();
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
        children: [
          Obx(
            ()=> AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              left:splashScreenController.animate.value?0: -30,
              top:splashScreenController.animate.value?0: -30,
              child: Image(image: AssetImage(tSplashTopIcon),height: height*0.2,width: width*0.2,),
            ),
          ),
         Obx(() =>  AnimatedPositioned(
           top:150,
           left:  splashScreenController.animate.value?tDefaultSize:250,
           duration: Duration(milliseconds: 2400),
           child: AnimatedOpacity(
             duration: Duration(milliseconds: 2000),
             opacity: splashScreenController.animate.value?1:0,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(tAppName,style: Theme.of(context).textTheme.headline1,),
                 Text(tAppTagLine,style: Theme.of(context).textTheme.headline3,),
               ],
             ),
           ),
         ),),
    Obx(() =>    AnimatedPositioned(
      duration: Duration(milliseconds: 2400),
      left: 50,
      bottom: splashScreenController.animate.value? 90:0,
      child: Image(image: AssetImage(tSplashImage),height: height*0.6,width: width*0.6,),
    ),),
        Obx(() =>   AnimatedPositioned(
          duration: Duration(milliseconds: 2400),
          bottom: splashScreenController.animate.value?60:0,
          right: tDefaultSize,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 200),
            opacity: splashScreenController.animate.value?1:0,
            child: Container(

              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          ),
        ))


        ],
        ),
      ),
    );
  }


}

