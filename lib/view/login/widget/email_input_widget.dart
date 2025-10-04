import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/bloc/login_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/utils/validations.dart';

class EmailInputWidget extends StatelessWidget {
  final FocusNode emailFocusNode;
  final FocusNode passwordFocusNode;
  const EmailInputWidget({
    super.key,
    required this.emailFocusNode,
    required this.passwordFocusNode,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc,LoginStates>(
      buildWhen: (current,previous)=>current.email != previous.email,
      builder: (context, state) {
        return TextFormField(
          focusNode: emailFocusNode,
          decoration: InputDecoration(
            labelText: "Email",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          onFieldSubmitted: (value) {
            emailFocusNode.unfocus();
            FocusScope.of(context).requestFocus(passwordFocusNode);
          },
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChanged(email: value));
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter email";
            } else if (!Validations.emailValidation(value)) {
              return "Please enter valid email";
            }
            return null;
          },
        );
      },
    );
  }
}
