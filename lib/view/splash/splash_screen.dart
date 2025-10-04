import 'package:flutter/material.dart';
import 'package:youtube_bloc_cleaning_coding/config/components/internet_exception_widget.dart';
import 'package:youtube_bloc_cleaning_coding/config/components/loading_widget.dart';
import 'package:youtube_bloc_cleaning_coding/config/components/round_button.dart';
import 'package:youtube_bloc_cleaning_coding/config/routes/routes_name.dart';
import 'package:youtube_bloc_cleaning_coding/data/exceptions/app_exceptions.dart';
import 'package:youtube_bloc_cleaning_coding/services/splash/splash_services.dart';
import 'package:youtube_bloc_cleaning_coding/view/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices _splashServices=SplashServices();
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashServices.isLoggedin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           throw NoInternetException("No Internet exception");
        }
      ),
      body: SafeArea(
        child: Center( 
          child: Text("Splash Screen",style: TextStyle(fontSize: 50),)
        ),
      ),
    );
  }
}