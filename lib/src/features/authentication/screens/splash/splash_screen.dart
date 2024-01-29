import 'package:flutter/material.dart';
import 'package:groupproject/src/constants/colors.dart';
import 'package:groupproject/src/constants/image_strings.dart';
import 'package:groupproject/src/constants/sizes.dart';
import 'package:groupproject/src/constants/text_strings.dart';
import 'package:groupproject/src/features/authentication/screens/welcome/welcome.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate=false;

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            left:animate?0: -30,
            top:animate?0: -30,
            child: Image(image: AssetImage(tSplashTopIcon),height: height*0.2,width: width*0.2,),
          ),
          AnimatedPositioned(
            top:150,
            left:  animate?tDefaultSize:250,
            duration: Duration(milliseconds: 2400),
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 2000),
              opacity: animate?1:0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tAppName,style: Theme.of(context).textTheme.headline1,),
                  Text(tAppTagLine,style: Theme.of(context).textTheme.headline3,),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 2400),
            left: 50,
            bottom: animate? 90:0,
            child: Image(image: AssetImage(tSplashImage),height: height*0.6,width: width*0.6,),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 2400),
            bottom: animate?60:0,
            right: tDefaultSize,
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 200),
              opacity: animate?1:0,
              child: Container(

                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          )


        ],
        ),
      ),
    );
  }

  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    setState(()=>animate=true);
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()));
  }
}
