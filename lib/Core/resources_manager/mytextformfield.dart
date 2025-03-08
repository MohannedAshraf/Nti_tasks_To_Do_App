import 'package:flutter/material.dart';
import 'package:to_do_app/Core/resources_manager/app_colors.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.maxlines,
    required this.hinttext,
    required this.labeltext,
    this.height = 63,
  });
  final int maxlines;
  final String hinttext;
  final String labeltext;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      width: 331,
      height: height,
      margin: EdgeInsets.all(23),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        maxLines: maxlines,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: labeltext,
          labelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: MyColors.gray,
          ),
          hintText: hinttext,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: MyColors.gray,
          ),
        ),
      ),
    );
  }
}
