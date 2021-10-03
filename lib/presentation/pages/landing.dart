import 'package:bithaber/presentation/pages/home.dart';

import 'package:bithaber/presentation/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:bithaber/bussinies_logic/provider/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[
        Color.fromRGBO(245, 147, 26, 1.0),
        Color.fromRGBO(250, 100, 70, 1.0)
      ],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    void navigateHome() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Home()),
        (Route<dynamic> route) => false,
      );
    }

    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: (MediaQuery.of(context).size.height / 6) + 90,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          //rgb(245,147,26)
                          Color.fromRGBO(245, 147, 26, 1.0),
                          Color.fromRGBO(250, 100, 70, 1.0)
                        ])),
                child: Center(
                  child: Image.asset("lib/assets/btctransparent.png",
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: CircleAvatar(
                radius: 90.0,
                backgroundImage: AssetImage("lib/assets/landingImage.jpg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Center(
                          child: Text(" Welcome to the",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold)))),
                  Expanded(
                      child: Text("bitNews!",
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()..shader = linearGradient)))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.login();
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        //rgb(245,147,26)
                        Color.fromRGBO(245, 147, 26, 1.0),
                        Color.fromRGBO(250, 100, 70, 1.0)
                      ]),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Image.asset(
                          "lib/assets/google_logo.png",
                          width: 30.0,
                          height: 30.0,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text('Continue with Google',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
