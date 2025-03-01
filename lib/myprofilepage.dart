import 'package:flutter/material.dart';
import 'package:to_do_app/customappbar.dart';
import 'package:to_do_app/myicons.dart';
import 'package:to_do_app/profilecontainer.dart';
import 'package:to_do_app/settingspage.dart';
import 'package:to_do_app/updateprofilepage.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      body: Column(
        children: [
          ProfileContainer(
            icon1p: Myicons.profile,
            textp: '   Update Profile',
            nextscreen: UpdateProfilePage(),
          ),
          ProfileContainer(
            icon1p: Myicons.setting,
            textp: "    Settings",
            nextscreen: SettingsPage(),
          ),
        ],
      ),
    );
  }
}
