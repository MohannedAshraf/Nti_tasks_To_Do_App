import 'package:flutter/material.dart';
import 'package:to_do_app/Core/resources_manager/app_colors.dart';
import 'package:to_do_app/Core/resources_manager/app_images.dart';
import 'package:to_do_app/Core/resources_manager/app_setings.dart';
import 'package:to_do_app/Core/resources_manager/mytextbutton.dart';
import 'package:to_do_app/Core/resources_manager/mytextformfield.dart';
import 'package:to_do_app/Features/presentation/Home/view/new_home_page.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({super.key});
  final TextEditingController oldpassword = TextEditingController();
  final TextEditingController newpassword = TextEditingController();
  final TextEditingController confirmpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 298,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(MyImages.palastine),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            MyTextFormField(
              top: 23,
              controller: oldpassword,
              maxlines: 1,
              hinttext: MyAppStrings.oldpasshint,
              labeltext: MyAppStrings.oldpass,
            ),
            MyTextFormField(
              controller: newpassword,
              maxlines: 1,
              hinttext: MyAppStrings.newpasshint,
              labeltext: MyAppStrings.newpass,
            ),
            MyTextFormField(
              controller: confirmpass,
              maxlines: 1,
              hinttext: MyAppStrings.confirmpasshint,
              labeltext: MyAppStrings.confirmpass,
            ),
            MyTextButton(
              offsety: 4,
              shadowcolor: MyColors.gray,
              buttontext: MyAppStrings.save,
              newscreen: NewHomepage(),
            ),
          ],
        ),
      ),
    );
  }
}
