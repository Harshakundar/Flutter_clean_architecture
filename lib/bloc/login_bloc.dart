import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:youtube_bloc_cleaning_coding/repository/auth/login_repository.dart';
import 'package:youtube_bloc_cleaning_coding/services/session_manager/session_controller.dart';
import 'package:youtube_bloc_cleaning_coding/utils/enums.dart';
import 'package:youtube_bloc_cleaning_coding/view/login/widget/login_button.dart';

part 'login_event.dart';
part 'login_states.dart';

class LoginBloc extends Bloc<LoginEvent, LoginStates> {
  LoginRepository loginRepository;
  LoginBloc({required this.loginRepository}) : super(const LoginStates()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(_loginApi);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginStates> emit) {
    print(event.email);
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _loginApi(LoginApi event, Emitter<LoginStates> emit) async {
    Map data = {'email': state.email, 'password': state.password};

    emit(state.copyWith(postApiStatus: PostApiStatus.loading));

    await loginRepository
        .loginApi(data)
        .then((value) async{
          print(data);
          print(value.toString());
          if (value.error.isNotEmpty) {
           emit(
              state.copyWith(
                message: value.error.toString(),
                postApiStatus: PostApiStatus.error,
              ),
            );
          } else {
            await SessionController().saveUserInPreference(value);
            await SessionController().getUserFromPreference();
             emit(
              state.copyWith(
                message: "Loggin Successfully",
                postApiStatus: PostApiStatus.success,
              ),
            );
            
          }
        })
        .onError((error, stackTrace) {
          print({"error":error.toString()});
          emit(state.copyWith(message: error.toString(), postApiStatus: PostApiStatus.error));
        });
        print(data);
  }
}
