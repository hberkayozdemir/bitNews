import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
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
              backgroundImage: AssetImage("lib/assets/logo.png"),
            ),
            SizedBox(height: 30),
            Text("Name : Hilmi Berkay",
                style: Theme.of(context).textTheme.subtitle2),
            Text("Surname : Özdemir",
                style: Theme.of(context).textTheme.subtitle2),
            Text("Email : hilmiberkayozdemir@yahoo.com",
                style: Theme.of(context).textTheme.subtitle2),
            const SizedBox(height: 20),
            const Text(
              'System Settings',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            ListTileSwitch(
              value: _switchValues[0],
              leading: const Icon(Icons.access_alarms),
              onChanged: (value) {
                value = _switchValues[0];
                setState(() {
                  _switchValues[0] = value;
                });
              },
              switchActiveColor: Colors.indigo,
              subtitle: Text("App Sends Notifications"),
              title: const Text(
                'Notification',
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Apperance',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 20),
            ListTileSwitch(
              value: _switchValues[1],
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.king_bed),
              onChanged: (value) {
                setState(() {
                  _switchValues[1] = !value;
                });
              },
              subtitle: const Text('Change app theme to dark'),
              switchActiveColor: Colors.yellow,
              title: const Text(
                'Night Mode',
              ),
            ),
            SizedBox(width: 20),
            InkWell(
              onTap: () {
// set state loged out token X
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
