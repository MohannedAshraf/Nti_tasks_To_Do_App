import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_app/addtaskpage.dart';
import 'package:to_do_app/customappbar.dart';
import 'package:to_do_app/myicons.dart';
import 'package:to_do_app/myimages.dart';

class HomeBeforTasks extends StatelessWidget {
  const HomeBeforTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTaskPage(),
                ), // الصفحة الجديدة
              );
            },
            icon: SvgPicture.asset(Myicons.addtask),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(height: 50),
          Center(
            child: Text(
              "There are no tasks yet,\n   press the button\n   To add new Task",
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 268,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.addtask),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
