import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:orbcura_app/app_state.dart';
import 'package:orbcura_app/screens/home_screen.dart';
import 'package:orbcura_app/screens/language.dart';
import 'package:orbcura_app/screens/login.dart';
import 'package:orbcura_app/screens/splash_nav.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  Gemini.init(apiKey: 'AIzaSyCl9z3J3IWXFTBfP6UBmjXqoVWz6H41SeM');
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => AppState())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: LanguagePage(),
      routes: {
        '/home': (context) => HomeScreen(),
        // '/splash':(context) => SplashScreen(),
        '/splash_nav': (context) => SplashNavScreen(),
        '/login': (context) => LoginScreen(),
        '/language': (context) => LanguagePage(),
      },
      //home: SplashNavScreen()
    );
  }
} 
