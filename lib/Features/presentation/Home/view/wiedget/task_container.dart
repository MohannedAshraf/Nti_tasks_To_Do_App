import 'package:flutter/material.dart';
import 'package:to_do_app/Core/resources_manager/app_colors.dart';
import 'package:to_do_app/Core/resources_manager/app_setings.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 90,
      padding: EdgeInsets.only(left: 12, top: 7, right: 12),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MyColors.containercolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                MyAppStrings.containerlabel,
                style: TextStyle(color: MyColors.gray),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    MyAppStrings.containerday,
                    style: TextStyle(color: MyColors.gray),
                  ),
                  Text(
                    MyAppStrings.containertime,
                    style: TextStyle(color: MyColors.gray),
                  ),
                ],
              ),
            ],
          ),
          Text(MyAppStrings.containerdes),
        ],
      ),
    );
  }
}
