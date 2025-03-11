import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_app/Core/resources_manager/app_colors.dart';
import 'package:to_do_app/Core/resources_manager/app_icons.dart';
import 'package:to_do_app/Core/resources_manager/mytextbutton.dart';
import 'package:to_do_app/Core/resources_manager/mytextformfield.dart';
import 'package:to_do_app/Features/presentation/Home/view/homepage.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddTaskPageState createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  String? selectedValue; // ✅ متغير لحفظ القيمة المختارة

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: MyColors.backgroundColor,
        title: const Text("Add Task"),
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
          SizedBox(height: 30),

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
                value: selectedValue,
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
                  setState(() {
                    selectedValue = newValue; // ✅ يظهر داخل الزر فقط
                  });
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
