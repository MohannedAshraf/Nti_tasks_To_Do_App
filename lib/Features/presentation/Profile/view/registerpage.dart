import 'package:flutter/material.dart';
import 'package:to_do_app/Core/resources_manager/app_colors.dart';
import 'package:to_do_app/Core/resources_manager/app_images.dart';
import 'package:to_do_app/Core/resources_manager/app_setings.dart';
import 'package:to_do_app/Core/resources_manager/mytextbutton.dart';
import 'package:to_do_app/Core/resources_manager/mytextformfield.dart';
import 'package:to_do_app/Features/presentation/Profile/view/loginpage.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController password = TextEditingController();
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
            MyTextFormField(
              controller: confirmpass,
              maxlines: 1,
              hinttext: MyAppStrings.confirmpasshint,
              labeltext: MyAppStrings.confirmpass,
            ),
            MyTextButton(
              offsety: 4,
              shadowcolor: MyColors.gray,
              buttontext: MyAppStrings.register,
              newscreen: LoginPage(),
            ),
            SizedBox(height: 40.99),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(MyAppStrings.haveacc),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    MyAppStrings.login,
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
