import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:youtube_bloc_cleaning_coding/config/routes/routes.dart';
import 'package:youtube_bloc_cleaning_coding/config/routes/routes_name.dart';
import 'package:youtube_bloc_cleaning_coding/repository/auth/login_http_api_repository.dart';
import 'package:youtube_bloc_cleaning_coding/repository/auth/login_mock_api_repository.dart';
import 'package:youtube_bloc_cleaning_coding/repository/auth/login_repository.dart';
import 'package:youtube_bloc_cleaning_coding/repository/movies/movies_http_api_repository.dart';
import 'package:youtube_bloc_cleaning_coding/repository/movies/movies_repository.dart';
import 'package:youtube_bloc_cleaning_coding/view/splash/splash_screen.dart';

GetIt getIt = GetIt.instance;
void main() {
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

void serviceLocator(){
  getIt.registerLazySingleton<LoginRepository>(()=>LoginockApiRepository());
  getIt.registerLazySingleton<MoviesRepository>(()=>MoviesHttpApiRepository());
}
