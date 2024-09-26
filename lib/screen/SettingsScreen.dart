import 'package:flutter/material.dart';
import 'package:flutterdemo/strings.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60.0),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person, color: Colors.orange),
              title: Text(AppStrings.account),
              subtitle: Text(AppStrings.manageAccountSettings),
              onTap: () {
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.notifications, color: Colors.orange),
              title: Text(AppStrings.notificationsTitle),
              subtitle: Text(AppStrings.manageNotiPref),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.lock, color: Colors.orange),
              title: Text(AppStrings.privacy),
              subtitle: Text(AppStrings.managePrivacy),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.language, color: Colors.orange),
              title: Text(AppStrings.language),
              subtitle: Text(AppStrings.selectLang),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.info, color: Colors.orange),
              title: Text(AppStrings.about),
              subtitle: Text(AppStrings.aboutApp),
            ),
          ],
        ),
      ),
    );
  }
}
