import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/Core/resources_manager/app_images.dart';
import 'package:to_do_app/Features/presentation/Profile/repo/profile_cubit.dart';
import 'package:to_do_app/Features/presentation/Profile/repo/profile_state.dart';
import 'package:to_do_app/Features/presentation/Profile/view/myprofilepage.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello!",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          BlocConsumer<ProfileCubit, ProfileState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Text(
                ProfileCubit.get(context).profileRepo.userModel!.name,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              );
            },
          ),
        ],
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
