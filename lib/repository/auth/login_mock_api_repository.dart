import 'package:youtube_bloc_cleaning_coding/models/user/user_model.dart';
import 'package:youtube_bloc_cleaning_coding/repository/auth/login_repository.dart';

class LoginockApiRepository implements LoginRepository{

  @override
  Future<UserModel> loginApi(dynamic data) async{
    await Future.delayed(Duration(seconds: 2));
    final response={
      'token':"sdf23eaxkj23"
    };
    return UserModel.fromJson(response);
  }
}
