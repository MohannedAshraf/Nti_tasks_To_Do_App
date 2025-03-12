import 'package:flutter/material.dart';
import 'package:to_do_app/Core/resources_manager/app_colors.dart';
import 'package:to_do_app/Core/resources_manager/app_images.dart';
import 'package:to_do_app/Core/resources_manager/app_setings.dart';
import 'package:to_do_app/Core/resources_manager/mytextbutton.dart';
import 'package:to_do_app/Core/resources_manager/mytextformfield.dart';
import 'package:to_do_app/Features/presentation/Home/view/homepagebeforaddingtask.dart';
import 'package:to_do_app/Features/presentation/Profile/view/registerpage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
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
              controller: name,
              maxlines: 1,
              hinttext: MyAppStrings.namehint,
              labeltext: MyAppStrings.name,
            ),
            MyTextFormField(
              controller: password,
              maxlines: 1,
              hinttext: MyAppStrings.passwordhint,
              labeltext: MyAppStrings.password,
            ),
            MyTextButton(
              offsety: 4,
              shadowcolor: MyColors.gray,
              buttontext: MyAppStrings.login,
              newscreen: HomeBeforTasks(),
            ),
            SizedBox(height: 40.99),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MyAppStrings.nohaveacc),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    MyAppStrings.register,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
