//@dart=2.9
import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:bithaber/bussinies_logic/provider/google_sign_in.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    dynamic _switchValues = [false, false];
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Profile Photo", style: Theme.of(context).textTheme.headline4),
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.indigo,
              backgroundImage: NetworkImage(user.photoURL),
            ),
            SizedBox(height: 30),
            Text("Name : " + user.displayName,
                style: Theme.of(context).textTheme.subtitle2),
            Text("Email : " + user.email,
                style: Theme.of(context).textTheme.subtitle2),
            const SizedBox(height: 20),
            SizedBox(width: 20),
            InkWell(
              onTap: () {
// set state loged out token X
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(245, 147, 26, 1.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      SizedBox(width: 7),
                      Text('Log out',
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
      ),
    );
  }
}
