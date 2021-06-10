import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class MovieListView extends StatelessWidget {
  MovieListView({Key? key}) : super(key: key);
List movies=[
  "300",
  "Avengers",
  "Avengers- End Game",
  "Avengers- Thor",
  "Avengers- Loki",
  "Avengers- Infinity war",
  "Avengers- Iron man",
  "Avengers- Ant man",
  "Avengers- Captain America",
  "Batman",
  "Wonder Woman",
  "Avengers- Hulk",
  "Avengers- Vision"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index){
        return Card(
          elevation: 4.5,
          color: Colors.white,
          child: ListTile(
            title: Text(movies[index]),
            subtitle: Text("sub"),
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text("H"),
              ),
            ),
            trailing: Text("..."),
            onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => MovieListViewDetails(movieName: movies.elementAt(index),)));
            },
          ),
        );
      },),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {
  MovieListViewDetails({Key? key, required this.movieName}) : super(key: key);
final String movieName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text("Movies ${this.movieName}"),
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
