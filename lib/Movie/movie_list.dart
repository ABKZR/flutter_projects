import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Movie/models/movie.dart';

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
        ],
      ),
    );
  }
}
class MovieDetailsThumbnail extends StatelessWidget {
  const MovieDetailsThumbnail({Key? key, required this.thumbnail}) : super(key: key);
final String thumbnail;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover
                )
              ),
            ),
            Icon(Icons.play_circle_outline_outlined,color: Colors.white,size: 100,)
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0x00f5f5f5),
                Color(0xfff5f5f5),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          height: 80,
        ),
      ],
    );
  }
}
// ignore: must_be_immutable
class MovieDetailsHeaderWithPoster extends StatelessWidget {
   MovieDetailsHeaderWithPoster({Key? key, required this.movie}) : super(key: key);
   final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
   children: [
     MoviePoster(poster: movie.images[0].toString()),
     SizedBox(width: 10,),
     MovieDetailsHeader(movie: movie),
   ],
      ),
    );
  }
}

class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("${movie.year} . ${movie.genre}".toUpperCase(),style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.cyan
        ),),
        Text(movie.title,style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 32
        ),),
        // Text.rich(TextSpan(
        //   style: TextStyle(
        //     fontWeight: FontWeight.w300,
        //     fontSize: 12
        //   ),
        //   //text: movie.plot,
        //   children:<TextSpan> [
        //     TextSpan(
        //       text: movie.plot,
        //
        //     )
        //   ]
        // ),
        // ),
      ],
    );
  }
}


class MoviePoster extends StatelessWidget {
  final String poster;
  const MoviePoster({Key? key,required this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var borderRadius=BorderRadius.all(Radius.circular(10));
    return Card(
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Container(
          width: MediaQuery.of(context).size.width/4,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(poster),
              fit: BoxFit.cover
            )
          ),
        ),
      ),
    );
  }
}
class MovieDetailsCast extends StatelessWidget {
  const MovieDetailsCast({Key? key, required this.movie}) : super(key: key);

  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          MovieField(field: "Cast",value: movie.actors),
          MovieField(field: "Director", value: movie.director),
          MovieField(field: "Awards", value: movie.awards),
        ],
      ),
    );
  }
}

class MovieField extends StatelessWidget {
  const MovieField({Key? key,required this.field,required this.value,}) : super(key: key);
  final String field;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$field : ", style: TextStyle(
          color: Colors.black38,
          fontSize: 12,
          fontWeight: FontWeight.w300
        ),),
        Expanded(
          child: Text(value,style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w300
          ),),
        )
      ],
    );
  }
}
class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        height: 0.5,
        color: Colors.grey,
      ),
    );
  }
}
