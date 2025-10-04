import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/bloc/movies_bloc/movies_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/main.dart';
import 'package:youtube_bloc_cleaning_coding/view/home/widget/app_bar_widget.dart';
import 'package:youtube_bloc_cleaning_coding/view/home/widget/list_view_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MoviesBloc moviesBloc;

  @override
  void initState() {
    super.initState();
    moviesBloc = MoviesBloc(moviesRepository: getIt());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    moviesBloc.close();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: BlocProvider(
        create: (_) => moviesBloc..add(MoviesFetched()),
        child: ListViewWidget(moviesBloc: moviesBloc)
      ),
    );
  }
}
