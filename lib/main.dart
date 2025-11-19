import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/screen/home_screen.dart';
import 'package:islami_app/ui/splash/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(
      seconds: 2,
    ),() {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes:{
        SplashScreen.routeName:(_)=>SplashScreen(),
        HomeScreen.routeName:(_)=>HomeScreen(),
      },
      initialRoute: SplashScreen.routeName,

    );
  }
}


