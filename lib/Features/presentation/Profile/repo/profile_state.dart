abstract class ProfileState {}

class ProfileInitState extends ProfileState {}

class ProfileLoadingState extends ProfileState {}

class ProfileSuccessState extends ProfileState {}

class ProfileErrorState extends ProfileState {
  late String error;
  ProfileErrorState(this.error);
}
