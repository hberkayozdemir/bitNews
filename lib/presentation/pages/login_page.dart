//@dart=2.9
import 'package:bithaber/presentation/pages/landing.dart';
import 'package:flutter/material.dart';

import 'package:bithaber/data/models/user.dart';

class LoginPage extends StatefulWidget {
  final User user;
  const LoginPage({
    this.user,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = new GlobalKey<FormState>();
  User user;

  @override
  Widget build(BuildContext context) {
    void navigateLanding() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Landing()),
        (Route<dynamic> route) => false,
      );
    }

    final usernameField = Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: TextField(
          onChanged: (String value) {},
          cursorColor: Color.fromRGBO(224, 62, 54, 1.0),
          decoration: InputDecoration(
            hintText: "Name",
            prefixIcon: Material(
              elevation: 0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Icon(
                Icons.person,
                color: Color.fromRGBO(224, 62, 54, 1.0),
              ),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
          ),
        ),
      ),
    );
    final usersurnameField = Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: TextField(
          onChanged: (String value) {},
          cursorColor: Color.fromRGBO(224, 62, 54, 1.0),
          decoration: InputDecoration(
            hintText: "Surname",
            prefixIcon: Material(
              elevation: 0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Icon(
                Icons.person,
                color: Color.fromRGBO(224, 62, 54, 1.0),
              ),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
          ),
        ),
      ),
    );

    final userEmailField = Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: TextField(
          onChanged: (String value) {},
          cursorColor: Color.fromRGBO(224, 62, 54, 1.0),
          decoration: InputDecoration(
            hintText: "Email",
            prefixIcon: Material(
              elevation: 0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Icon(
                Icons.email,
                color: Color.fromRGBO(224, 62, 54, 1.0),
              ),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
          ),
        ),
      ),
    );
    final userPasswordField = Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: TextField(
          onChanged: (String value) {},
          cursorColor: Color.fromRGBO(224, 62, 54, 1.0),
          decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Material(
                elevation: 0,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Icon(
                  Icons.lock,
                  color: Color.fromRGBO(224, 62, 54, 1.0),
                ),
              ),
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
        ),
      ),
    );
    final userPasswordComfirmField = Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Material(
        elevation: 2.0,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: TextField(
          onChanged: (String value) {},
          cursorColor: Color.fromRGBO(224, 62, 54, 1.0),
          decoration: InputDecoration(
              hintText: "Comfirm Password",
              prefixIcon: Material(
                elevation: 0,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: Icon(
                  Icons.lock,
                  color: Color.fromRGBO(224, 62, 54, 1.0),
                ),
              ),
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: (MediaQuery.of(context).size.height / 5) + 90,
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
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  userEmailField,
                  SizedBox(height: 25),
                  userPasswordField,
                  SizedBox(height: 50),
                  InkWell(
                    onTap: () {},
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
                              ])),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Center(
                              child: Text('Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      navigateLanding();
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
                              ])),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Center(
                              child: Text('Back',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
