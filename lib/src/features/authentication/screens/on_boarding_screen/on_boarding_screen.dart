import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:groupproject/src/constants/colors.dart';
import 'package:groupproject/src/constants/image_strings.dart';
import 'package:groupproject/src/constants/text_strings.dart';
import 'package:groupproject/src/features/authentication/models/model_on_boarding.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {
 OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage=0;

  final controller=LiquidController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages=[
    OnBoardingPageWidget(
    model: OnBoardingModel(
    image: tOnBoadingImage1,
    title: tOnBoardingTitle1,
    subTitle: tOnBoardingSubTitle1,
    counterText: tOnBoardingCounter1,
    bgColor: tOnBoardingPage1Color,
    height: size.height),
    ),
    OnBoardingPageWidget(
    model: OnBoardingModel(
    image: tOnBoadingImage2,
    title: tOnBoardingTitle2,
    subTitle: tOnBoardingSubTitle2,
    counterText: tOnBoardingCounter2,
    bgColor: tOnBoardingPage2Color,
    height: size.height),
    ),
    OnBoardingPageWidget(
    model: OnBoardingModel(
    image: tOnBoadingImage3,
    title: tOnBoardingTitle3,
    subTitle: tOnBoardingSubTitle3,
    counterText: tOnBoardingCounter3,
    bgColor: tOnBoardingPage3Color,
    height: size.height),
    ),

    ];


    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(pages: pages,
            liquidController: controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal:true,
              onPageChangeCallback: onPageChnagedCallback,
            ),
            Positioned(
                bottom: 60,
                child: OutlinedButton(
              onPressed: (){
                int nextPage=controller.currentPage+1;
                controller.animateToPage(page: nextPage);
              },
              child: Container(
               padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: tDarkColor,shape: BoxShape.circle
                ),
                child: Icon(Icons.arrow_forward_ios),
              ),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                  shape: const CircleBorder(),
                  padding: EdgeInsets.all(20),
                  onPrimary: Colors.orange,

                ),
            )),
            Positioned(
                top: 30,
                right: 20,
                child:TextButton(
                    onPressed: ()=>
                      controller.jumpToPage(page: 2)
                    ,
                    child: const Text("Skip",style: TextStyle(color: Colors.grey),))),
            Positioned(
              bottom: 10,
                child: AnimatedSmoothIndicator(activeIndex: controller.currentPage,count: 3,effect: WormEffect(
                  activeDotColor: Color(0xff272727),dotHeight: 5.0
                ),))
          ],
        ),
      ),
    );
  }

 onPageChnagedCallback(int
 activePageIndex){
  setState(() {
    currentPage=activePageIndex;
  });
}
}

