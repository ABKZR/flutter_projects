
import 'package:flutter/material.dart';
import 'package:flutter_project/Movie/models/movie.dart';

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
              height: 170,
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

class MovieDetailsExtraPoster extends StatelessWidget {
  const MovieDetailsExtraPoster({Key? key,required this.posters}) : super(key: key);
final List<String> posters;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("More Movie Posters".toUpperCase(),style: TextStyle(
            fontSize: 14,
            color: Colors.black26
          ),),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16),
         height: 170,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 8,),
              itemCount: posters.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width/4,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(posters[index]),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),),
        )
      ],
    );
  }
}
