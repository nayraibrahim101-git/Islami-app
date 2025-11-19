import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/style/AssetsManager.dart';
import 'package:islami_app/ui/home/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "Splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(
      seconds: 2
    ),() {
      Navigator.pushReplacementNamed(context,HomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Image.asset(
        AssetsManager.splash_screen,
            fit:BoxFit.fill,
      )
    );
  }
}
