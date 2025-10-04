import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/bloc/login_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/config/routes/routes_name.dart';
import 'package:youtube_bloc_cleaning_coding/utils/enums.dart';
import 'package:youtube_bloc_cleaning_coding/utils/flush_bar_helper.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  const LoginButton({super.key, required this.formkey});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginStates>(
      listenWhen: (current,previous)=>current.postApiStatus != previous.postApiStatus,
      listener: (context, state) {
        print({state.postApiStatus});
        if(state.postApiStatus==PostApiStatus.error){
          FlushBarHelper.FlushBarErrormessage(state.message.toString(), context);
        }
        if(state.postApiStatus==PostApiStatus.success){
          Navigator.pushNamed(context, RoutesName.homeScreen);
        }

      },
      child: BlocBuilder<LoginBloc, LoginStates>(
        buildWhen: (current,previous)=>current.postApiStatus != previous.postApiStatus,
        // buildWhen: (current, previous) => false,
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () {
              if (formkey.currentState!.validate()) {
                context.read<LoginBloc>().add(LoginApi());
              }
            },
            child: state.postApiStatus==PostApiStatus.loading? CircularProgressIndicator(): Text("Login"),
          );
        },
      ),
    );
  }
}
