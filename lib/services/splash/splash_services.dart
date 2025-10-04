import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:youtube_bloc_cleaning_coding/config/routes/routes_name.dart';
import 'package:youtube_bloc_cleaning_coding/services/session_manager/session_controller.dart';

class SplashServices {
  void isLoggedin(BuildContext context){
    SessionController().getUserFromPreference().then((value){
      if(SessionController().isLogin ?? false){
        Timer(Duration(seconds: 3), ()=> Navigator.pushNamedAndRemoveUntil(context, RoutesName.homeScreen, (route)=>false));
      }
      else{
        Timer(Duration(seconds: 3), ()=> Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route)=>false));
      }
    }).onError((error,stackTrace){
      Timer(Duration(seconds: 3), ()=> Navigator.pushNamedAndRemoveUntil(context, RoutesName.loginScreen, (route)=>false));
    });
    
  }
}
