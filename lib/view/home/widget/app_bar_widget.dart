import 'package:flutter/material.dart';
import 'package:youtube_bloc_cleaning_coding/config/routes/routes_name.dart';
import 'package:youtube_bloc_cleaning_coding/services/storage/local_storage.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Center(child: Text("Home")),
        actions: [
          IconButton(
            onPressed: () {
              LocalStorage localStorage = LocalStorage();
              localStorage.clearValue('token').then((value) {
                localStorage.clearValue('isLogin').then((value) {
                  Navigator.pushNamed(context, RoutesName.loginScreen);
                });
              });
            },
            icon: Icon(Icons.logout),
          ),
        ],
      );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}