import 'package:flutter/material.dart';
import 'package:orbcura_app/screens/chats.dart';
import 'package:orbcura_app/screens/home_screen.dart';
import 'package:orbcura_app/screens/qr_scan.dart';
import 'package:orbcura_app/screens/splash.dart';
import 'package:orbcura_app/screens/splash_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        // home: SplashScreen(),
        // routes: {
        //   '/home':(context) => HomeScreen(),
        //   // '/splash':(context) => SplashScreen(),
        //   '/splash_nav':(context) => SplashNavScreen()
        // },
        home: ChatsScreen());
  }
}
