import 'package:flutter/material.dart';
import 'package:to_do_app/homepage.dart';
import 'package:to_do_app/homepagebeforaddingtask.dart';
import 'package:to_do_app/mycolors.dart';
import 'package:to_do_app/myimages.dart';
import 'package:to_do_app/mytextbutton.dart';
import 'package:to_do_app/mytextformfield.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
    );
  }
}
