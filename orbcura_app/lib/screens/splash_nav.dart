import 'package:flutter/material.dart';
import 'package:orbcura_app/widgets/four_corner_screen.dart';

class SplashNavScreen extends StatefulWidget {
  const SplashNavScreen({super.key});

  @override
  State<SplashNavScreen> createState() => _SplashNavScreenState();
}

class _SplashNavScreenState extends State<SplashNavScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).height;

    return FourCornerScreen(
        CornerChild(
            Image.asset(
              "assets/mic.png",
              height: h / 16,
            ),
            () {}),
        CornerChild(
          Image.asset(
            "assets/communicate.png",
            height: h / 16,
          ),
          () {},
        ),
        CornerChild(
          Image.asset(
            "assets/home.png",
            height: h / 16,
          ),
          () {},
        ),
        CornerChild(
          Image.asset(
            "assets/next.png",
            height: h / 16,
          ),
          () {},
        ),
        Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'assets/background_splash_nav.png', // Replace with your image asset path
                fit: BoxFit.cover,
              ),
              Center(
                child: Text(
                  'Welcome to the Splash Navigation Screen!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
