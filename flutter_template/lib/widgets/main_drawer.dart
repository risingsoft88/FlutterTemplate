import 'package:flutter/material.dart';
import 'package:flutter_template/screens/settings_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, Function() tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget> [
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Center(
                child: (Text(
                  'Sliding menu',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Theme.of(context).primaryColor),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            buildListTile('Home', Icons.home, () {
              Navigator.of(context).pushReplacementNamed('/');
            }),
            buildListTile('Settings', Icons.settings, () {
              Navigator.of(context).pushReplacementNamed(SettingsScreen.routeName);
            })
          ]
        ),
      ),
    );
  }
}