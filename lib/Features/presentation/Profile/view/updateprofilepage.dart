import 'package:flutter/material.dart';
import 'package:to_do_app/Core/resources_manager/app_colors.dart';
import 'package:to_do_app/Core/resources_manager/app_images.dart';
import 'package:to_do_app/Core/resources_manager/mytextbutton.dart';
import 'package:to_do_app/Core/resources_manager/mytextformfield.dart';
import 'package:to_do_app/Features/presentation/Home/view/homepagebeforaddingtask.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 446,
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
              maxlines: 1,
              hinttext: "type your name here",
              labeltext: "Your Name",
            ),
            SizedBox(height: 63),
            MyTextButton(
              offsety: 4,
              shadowcolor: MyColors.gray2,
              buttontext: "Save",
              newscreen: HomeBeforTasks(),
            ),
          ],
        ),
      ),
    );
  }
}
