import 'package:youtube_bloc_cleaning_coding/config/app_url.dart';
import 'package:youtube_bloc_cleaning_coding/data/network/network_services_api.dart';
import 'package:youtube_bloc_cleaning_coding/models/user/user_model.dart';
import 'package:youtube_bloc_cleaning_coding/repository/auth/login_repository.dart';

class LoginHttpApiRepository implements LoginRepository {
  final _api=NetworkServicesApi();
  
  @override
  Future<UserModel> loginApi(dynamic data) async{
    final response= await _api.postApi(AppUrl.loginApi, data);
    return UserModel.fromJson(response);
  }
}
