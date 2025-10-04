import 'package:flutter/material.dart';
import 'package:youtube_bloc_cleaning_coding/bloc/login_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/main.dart';
import 'package:youtube_bloc_cleaning_coding/repository/auth/login_repository.dart';
import 'widget/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late LoginBloc _loginBloc;
  
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final _formkey = GlobalKey<FormState>();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loginBloc = LoginBloc(loginRepository: getIt());
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        title: Center(child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
        
      ),
      body: BlocProvider(
        create: (_)=>_loginBloc,
        child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EmailInputWidget(emailFocusNode: emailFocusNode, passwordFocusNode: passwordFocusNode),
              SizedBox(height: 20,),
              PasswordInputWidget(passwordFocusNode: passwordFocusNode),
              SizedBox(height: 20,),
             LoginButton(formkey: _formkey)
            ],
          ),
        ),
      ),
        )
    );
  }
}