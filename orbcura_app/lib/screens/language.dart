import 'package:flutter/material.dart';
import 'package:orbcura_app/widgets/four_corner_screen.dart';

enum Language {hindi, english}

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {

  // shuru mein english aayegi
  Language lang = Language.english;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
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
            "assets/account.png",
            height: h / 16,
          ),
          () {},
        ),
        CornerChild(
          Image.asset(
            "assets/login.png",
            height: h / 16,
          ),
          () {Navigator.of(context)
            .pushReplacementNamed('/splash_nav');},
        ),

        Center(child: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/background_splash_nav.png"), fit: BoxFit.fill)),
          child: Center(child: GestureDetector(onTap: () {
            setState(() {
              if (lang == Language.english) {
                lang = Language.hindi;
              } else {
                lang = Language.english;
              }
            });
          }, child: Semantics(onTapHint: "change language", image: false, label: lang.name.toUpperCase()+" Language", liveRegion:true, child: Semantics(image: false, child: Image.asset("assets/orbcura_"+lang.name+".png", height: h/6,)))),),
        ),)
        
    );
  }
}