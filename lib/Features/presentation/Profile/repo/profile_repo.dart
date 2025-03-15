import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/Core/network/api_helper.dart';
import 'package:to_do_app/Core/network/api_response.dart';
import 'package:to_do_app/Core/network/end_points.dart';
import 'package:to_do_app/Features/presentation/Profile/model/user_model.dart';

class ProfileRepo {
  ProfileRepo._internal();
  static ProfileRepo _instance = ProfileRepo._internal();
  factory ProfileRepo() => _instance;

  // UserModel? userModel;
  // Either<String, void> profileRepo<String>(UserModel u) {
  //   try {
  //     userModel = u;
  //     return right(null);
  //   } catch (e) {
  //     return left(e.toString() as String);
  //   }
  // }

  APIHelper dio = APIHelper();

  // Future<Either<String, Response?>> register({
  //   required String username,
  //   required String password,
  // }) async {
  //   try {
  //     Dio dio = Dio();
  //     Map<String, dynamic> data = {"username": username, "password": password};
  //     var response = await dio.post(
  //       'https://nti-production.up.railway.app/api/register',
  //       data: FormData.fromMap(data),
  //       options: Options(headers: {}),
  //     );
  //     print(response.data.toString());

  //     return right(response);
  //   } on DioException catch (e) {
  //     String error;
  //     if (e.response != null) {
  //       error = e.response!.data['message'].toString();
  //     } else {
  //       error = e.toString();
  //     }
  //     print(error);
  //     return left(error);
  //   }
  // }

  UserModel? userModel;

  Future<Either<String, UserModel>> login({
    required String username,
    required String password,
  }) async {
    try {
      ApiResponse response = await dio.postRequest(
        endPoint: EndPoints.login,
        data: {"username": username, "password": password},
        isAuthorized: false,
      );
      if (response.status) {
        // success
        LoginResponseModel loginResponseModel = LoginResponseModel.fromJson(
          response.data,
        );
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('access_token', loginResponseModel.accessToken!);
        await prefs.setString(
          'refresh_token',
          loginResponseModel.refreshToken!,
        );
        // save tokens
        //loginResponseModel.accessToken
        userModel = loginResponseModel.user!;
        return Right(userModel!);
      } else {
        // error
        return Left(response.message);
      }
    } catch (e) {
      return left(ApiResponse.fromError(e).message);
    }
  }
}
