import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:groupproject/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';
import 'package:groupproject/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:groupproject/src/routing/routes.dart';



import 'src/utils/theme/theme.dart';

void main() {
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      // home: SplashScreen(),
      initialRoute:RoutesClass.splash,
      getPages: RoutesClass.routes,
    );
  }
}
