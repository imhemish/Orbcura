import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    var w = MediaQuery.sizeOf(context).width;

    return FourCornerScreen(
      CornerChild(
        Image.asset(
          "assets/mic.png",
          height: h / 16,
        ),
        () {},
      ),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(flex: 7),
                Image.asset(
                  'assets/app_logo.png', // Ensure the path is correct
                  width: w / 2,
                  height: h / 4,
                ),
                SizedBox(height: 20), // Add some space between images
                Image.asset(
                  'assets/upi_button.png', // Path to your new image
                  width: w / 2,
                  height: h / 1.5,
                ),
                Spacer(flex: 100),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
