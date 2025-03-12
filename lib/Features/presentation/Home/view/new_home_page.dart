import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:to_do_app/Core/resources_manager/app_colors.dart';
import 'package:to_do_app/Core/resources_manager/app_icons.dart';
import 'package:to_do_app/Core/resources_manager/app_setings.dart';
import 'package:to_do_app/Core/resources_manager/customappbar.dart';
import 'package:to_do_app/Features/presentation/Add%20task/view/addtaskpage.dart';
import 'package:to_do_app/Features/presentation/Home/view/wiedget/task_container.dart';

class NewHomepage extends StatelessWidget {
  const NewHomepage({super.key});
  final int itemcount = 4;
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

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                Text(
                  MyAppStrings.tasks,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: MyColors.mintgreen,
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Text(
                      MyAppStrings.five,
                      style: TextStyle(
                        color: MyColors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: itemcount,
                itemBuilder: (context, index) {
                  return TaskContainer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
