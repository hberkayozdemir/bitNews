import 'package:bithaber/presentation/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigateHome() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => Home()),
        (Route<dynamic> route) => false,
      );
    }

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Expanded(
              child: Image(
                  alignment: Alignment.center,
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage("lib/assets/logo1.png"))),
          Expanded(
            child: Text(" BitNews",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 54,
                    color: Colors.black)),
          ),
          Expanded(
            child: FadeInImage.assetNetwork(
                placeholder: 'lib/assets/loading.gif',
                image:
                    "https://images.pexels.com/photos/7567564/pexels-photo-7567564.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
          ),
          Expanded(
              child: Center(
                  child: Text(
                      "Geleceğin para birimi ile ilgili en güncel\n       haberleri burada bulabilirsiniz.",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w300)))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            /*  crossAxisAlignment: CrossAxisAlignment.stretch, */
            children: [
              InkWell(
                onTap: () {
                  navigateHome();
                },
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                        color: Colors.indigo,
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
                              color: Colors.indigo,
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
                onTap: () {},
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo,
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
                color: Colors.indigo,
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
            onTap: () {},
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
    ));
  }
}
