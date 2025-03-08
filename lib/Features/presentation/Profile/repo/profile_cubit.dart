import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/Features/presentation/Profile/model/user_model.dart';
import 'package:to_do_app/Features/presentation/Profile/repo/profile_repo.dart';
import 'package:to_do_app/Features/presentation/Profile/repo/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitState());
  static ProfileCubit get(context) => BlocProvider.of(context);
  final ProfileRepo profileRepo = ProfileRepo();
  void update(UserModel u) async {
    emit(ProfileLoadingState());
    await Future.delayed(Duration(microseconds: 1000));
    Either<String, void> response = profileRepo.profileRepo(u);
    response.fold(
      (String error) {
        emit(ProfileErrorState(error));
      },
      (r) {
        emit(ProfileSuccessState());
      },
    );
  }
}
