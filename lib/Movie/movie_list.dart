import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Movie/models/movie.dart';
import 'package:flutter_project/Movie/movie_ui/movie_ui.dart';

// ignore: must_be_immutable
class MovieListView extends StatelessWidget {
  MovieListView({Key? key}) : super(key: key);
  final List<Movie> movieList = Movie.getMovie();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              movieCard(movieList[index], context),
              Positioned(
                  top: 10,
                  child: movieImage(movieList[index].images[0])),
             
            ],
          );
        },
      ),
    );
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 60),
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 54),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(movie.title, style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                      ),
                      Text("Rating: ${movie.imdbRating} /10",style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                      ),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Released: ${movie.released}",style: TextStyle(
                  color: Colors.grey,
                      fontSize: 15
                  ),),
                      Text(movie.runtime,style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),),
                      Text(movie.rated,style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieListViewDetails(
                      movieName: movie.title,
                      movie: movie,
                    )));
      },
    );
  }

  Widget movieImage(String imageUrl) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          )),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {
  MovieListViewDetails({Key? key, required this.movieName, required this.movie})
      : super(key: key);
  final String movieName;
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text("Movies"),
      ),
      body: ListView(
        children: [
          MovieDetailsThumbnail(thumbnail: movie.images[0]),
          MovieDetailsHeaderWithPoster(movie: movie),
          HorizontalLine(),
          MovieDetailsCast(movie: movie),
          HorizontalLine(),
          MovieDetailsExtraPoster(posters: movie.images,)
        ],
      ),
    );
  }
}
