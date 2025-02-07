import 'package:flutter/material.dart';
import 'package:orbcura_app/app_state.dart';
import 'package:orbcura_app/screens/language.dart';
import 'package:orbcura_app/widgets/four_corner_screen.dart';
import 'package:provider/provider.dart';
import 'package:vibration/vibration.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;

    return FourCornerScreen(
        topLeft: CornerChild(
            Image.asset(
              "assets/mic.png",
              height: h / 16,
            ),
            () {}),
        topRight: CornerChild(
          Image.asset(
            "assets/communicate.png",
            height: h / 16,
          ),
          () {
            Provider.of<AppState>(context, listen: false).tts.speak(
              "Tap in the centre of screen to change language");
          },
        ),
        bottomLeft: CornerChild(
          Image.asset(
            "assets/account.png",
            height: h / 16,
          ),
          () {},
        ),
        bottomRight: CornerChild(
          Image.asset(
            "assets/login.png",
            height: h / 16,
          ),
          () {
            Vibration.vibrate();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LanguagePage()));
          },
        ),
        content: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/login_background.png"),
                    fit: BoxFit.fill)),
          ),
        ));
  }
}
