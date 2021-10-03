import 'package:bithaber/presentation/pages/home.dart';
import 'package:bithaber/presentation/pages/landing.dart';

import 'package:bithaber/presentation/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:bithaber/bussinies_logic/provider/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);

              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return Home();
              } else {
                return Landing();
              }
            }),
      ),
    );
  }
}

Widget buildLoading() => Center(child: CircularProgressIndicator());
