import 'package:flutter/material.dart';
import 'package:to_do_app/myimages.dart';
import 'package:to_do_app/myprofilepage.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.actions});
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyProfilePage()),
          );
        },
        child: Container(
          margin: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(MyImages.palastine),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      title: Column(
        children: [
          Text(
            "Hello!",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Text(
            "Mohanned Ashraf",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
