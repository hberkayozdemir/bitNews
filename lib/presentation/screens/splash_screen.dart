import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bithaber/main.dart';
import 'package:bithaber/presentation/pages/landing.dart';

import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
      backgroundColor: Colors.indigo,
      duration: 1500,
      splashTransition: SplashTransition.slideTransition,
      splashIconSize: 200,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Image(
            image: AssetImage(
              "lib/assets/logo1.png",
            ),
          )),
          Expanded(
            child: Text(" BitNews",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 54,
                    color: Colors.white)),
          ),
          Expanded(
            child: Text(" Break News Cyrpto",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.white)),
          ),
        ],
      ),
      nextScreen: Landing(),
    ));
  }
}
