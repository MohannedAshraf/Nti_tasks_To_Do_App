

import 'package:flutter/widgets.dart';

class AddTaskModel {
  late String? taskname;
  late String? taskgroup;
  late Widget? taskicon;
  late Color? taskcolor;
  late String? taskdescribtion;

  AddTaskModel({
    this.taskgroup,
    this.taskname,
     this.taskdescribtion,
     this.taskicon,
     this.taskcolor,
  });
}
