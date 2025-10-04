import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/bloc/movies_bloc/movies_bloc.dart';
import 'package:youtube_bloc_cleaning_coding/config/components/internet_exception_widget.dart';
import 'package:youtube_bloc_cleaning_coding/utils/enums.dart';

class ListViewWidget extends StatelessWidget {
  final MoviesBloc moviesBloc;
  const ListViewWidget({super.key, required this.moviesBloc});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<MoviesBloc,MoviesState>(
          builder: (BuildContext context, state) {
            // print({"state":state.moviesList});
            switch(state.moviesList.status){
              
              case Status.loading:
                return Center(child: CircularProgressIndicator());
              case Status.error:
                if (state.moviesList.message=="No Internet Connection"){
                  return InternetExceptionWidget(onPress: 
                  (){
                    moviesBloc.add(MoviesFetched()); 
                  }
                  );
                }
                return Center(child: Text(state.moviesList.message.toString()));
              case Status.completed:
                if(state.moviesList.data == null){
                  return Text("No Data Found");
                }
                final movieList=state.moviesList.data!;
                return ListView.builder(
                  itemCount: movieList.tvShow.length,
                  itemBuilder: (context,index){
                    final tvShow=movieList.tvShow[index];
                    return Card(
                      child: ListTile(
                        leading: Image.network(tvShow.imageThumbNailPath),
                        title: Text(tvShow.name.toString()),
                        subtitle: Text(tvShow.network.toString()),
                        trailing: Text(tvShow.status.toString()),
                      ),
                    );
                  },
                );
                
              default:
                return SizedBox();
            }
            
          },
        );
  }
}