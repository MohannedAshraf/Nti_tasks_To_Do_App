import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:to_do_app/Core/resources_manager/network/dio.dart';
import 'package:to_do_app/Features/presentation/Profile/model/user_model.dart';

class ProfileRepo {
  UserModel? userModel;
  Either<String, void> profileRepo<String>(UserModel u) {
    try {
      userModel = u;
      return right(null);
    } catch (e) {
      return left(e.toString() as String);
    }
  }

  DioHelper dio = DioHelper();

  Future<Either<String, Response?>> register({
    required String username,
    required String password,
  }) async {
    try {
      Response? response = await dio.postRequest(
        endPoint: 'register',
        data: {
          'username': username,
          'password': password,
          //'image':'',
        },
      );

      return right(response);
    } catch (e) {
      return left(e.toString() as String);
    }
  }
}
