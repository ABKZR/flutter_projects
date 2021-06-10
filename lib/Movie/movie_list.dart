import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Movie/models/movie.dart';
// ignore: must_be_immutable
class MovieListView extends StatelessWidget {
  MovieListView({Key? key}) : super(key: key);
  final List<Movie> movieList= Movie.getMovie();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index){
        return Card(
          elevation: 4.5,
          color: Colors.white,
          child: ListTile(
            title: Text(movieList[index].title),
            subtitle: Text("${movieList[index].title}"),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(movieList[index].images[0]),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(13.9),
                ),
                child: null ,
              ),
            ),
            trailing: Text("..."),
            onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => MovieListViewDetails(movieName: movieList.elementAt(index).title,movie: movieList[index],)));
            },
          ),
        );
      },),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {
  MovieListViewDetails({Key? key, required this.movieName, required this.movie}) : super(key: key);
final String movieName;
final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text("Movies ${this.movie.actors}"),
      ),
      body: Center(
        child: Container(
          child: TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: Text("Go Back"),
          ),
        ),
      ),
    );
  }
}
