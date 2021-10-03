import "package:flutter/material.dart";

Widget GoogleSignInButton1() {
  return InkWell(
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
  );
}
