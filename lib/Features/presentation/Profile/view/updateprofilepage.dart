import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/Core/resources_manager/app_colors.dart';
import 'package:to_do_app/Core/resources_manager/app_images.dart';

import 'package:to_do_app/Core/resources_manager/mytextformfield.dart';
import 'package:to_do_app/Features/presentation/Home/view/homepagebeforaddingtask.dart';

import 'package:to_do_app/Features/presentation/Profile/repo/profile_cubit.dart';
import 'package:to_do_app/Features/presentation/Profile/repo/profile_state.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
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
                    controller: ProfileCubit.get(context).name,
                    maxlines: 1,
                    hinttext: "type your name here",
                    labeltext: "Your Name",
                  ),
                  SizedBox(height: 63),
                  BlocConsumer<ProfileCubit, ProfileState>(
                    listener: (context, state) {
                      if (state is ProfileSuccessState) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => HomeBeforTasks(
                                  cubit: ProfileCubit.get(context),
                                ),
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      if (state is ProfileLoadingState) {
                        return CircularProgressIndicator(
                          backgroundColor: Colors.blue,
                        );
                      } else {
                        return Container(
                          width: 331,
                          height: 48.01,
                          margin: EdgeInsets.only(left: 22, right: 20, top: 30),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                // ignore: deprecated_member_use
                                color: MyColors.gray2.withOpacity(0.2),
                                blurRadius: 10,
                                spreadRadius: 0,
                                offset: Offset(0, 4),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(14),
                            color: MyColors.green,
                          ),
                          child: TextButton(
                            onPressed: () {
                              ProfileCubit.get(context).update();
                            },
                            child: Text(
                              "Save",
                              style: TextStyle(
                                color: MyColors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
//  return MyTextButton(
//                       offsety: 4,
//                       shadowcolor: MyColors.gray2,
//                       buttontext: "Save",
//                       newscreen: HomeBeforTasks(),
//                     );