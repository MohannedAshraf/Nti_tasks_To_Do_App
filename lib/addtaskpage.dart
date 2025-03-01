import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_app/homepage.dart';
import 'package:to_do_app/mycolors.dart';
import 'package:to_do_app/myicons.dart';
import 'package:to_do_app/mytextbutton.dart';
import 'package:to_do_app/mytextformfield.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(Myicons.arrow2),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 63,
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 17, left: 20, right: 20),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                hint: Text("Select Task Group"),
                dropdownColor: MyColors.white,
                borderRadius: BorderRadius.circular(15),
                items:
                    choices.keys.map((String key) {
                      return DropdownMenuItem<String>(
                        value: key,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              choices[key]!["icon"],
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 10),
                            Text(
                              choices[key]!["label"],
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                onChanged: (newValue) {
                  print("Selected: $newValue");
                },
              ),
            ),
          ),
          MyTextFormField(
            maxlines: 1,
            hinttext: "Enter task name",
            labeltext: "Task Name",
          ),
          MyTextFormField(
            maxlines: 6,
            hinttext: "Enter task description ... ",
            labeltext: "Description",
            height: 142,
          ),
          MyTextButton(
            offsety: 5,
            shadowcolor: MyColors.green,
            buttontext: 'Save',
            newscreen: MyHome(),
          ),
        ],
      ),
    );
  }
}

final Map<String, Map<String, dynamic>> choices = {
  "Home": {"label": "Home", "icon": Myicons.home},
  "Work": {"label": "Work", "icon": Myicons.workbag},
  "Personal": {"label": "Personal", "icon": Myicons.person},
};
