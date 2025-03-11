import 'package:dartz/dartz.dart';
import 'package:to_do_app/Features/presentation/Profile/model/user_model.dart';

class ProfileRepo {
  ProfileRepo._internal();
  static final ProfileRepo _instance = ProfileRepo._internal();
  static getInstance() {
    return _instance;
  }

  UserModel? userModel;
  Either<String, void> profileRepo<String>(UserModel u) {
    try {
      userModel = u;
      return right(null);
    } catch (e) {
      return left(e.toString() as String);
    }
  }
}
