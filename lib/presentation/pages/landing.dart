import 'package:bithaber/presentation/pages/home.dart';
import 'package:bithaber/presentation/pages/login_page.dart';
import 'package:bithaber/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

    void navigateRegister() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => RegisterPage()),
        (Route<dynamic> route) => false,
      );
    }

    void navigateLogin() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
        (Route<dynamic> route) => false,
      );
    }

    return SafeArea(
      child: Scaffold(
          body: Center(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              /*  crossAxisAlignment: CrossAxisAlignment.stretch, */
              children: [
                InkWell(
                  onTap: () {
                    navigateLogin();
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromRGBO(245, 147, 26, 1.0),
                          width: 2,
                          style: BorderStyle.solid),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SizedBox(width: 6),
                          Text('Login',
                              style: TextStyle(
                                color: Color.fromRGBO(245, 147, 26, 1.0),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    navigateRegister();
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                          SizedBox(width: 7),
                          Text('Register',
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
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {},
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
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                navigateHome();
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xFF000000),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Image.asset(
                        "lib/assets/apple.png",
                        width: 40.0,
                        height: 40.0,
                      ),
                      SizedBox(width: 15),
                      Text('Continue with Apple',
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
            SizedBox(
              height: 120,
            ),
          ],
        ),
      )),
    );
  }
}
