import 'package:youtube_bloc_cleaning_coding/models/user/user_model.dart';

abstract class LoginRepository {

  Future<UserModel> loginApi(dynamic data);
}
