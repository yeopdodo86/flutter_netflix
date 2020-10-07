import 'package:flutter/material.dart';
import 'package:practice_netflix/model/model_movie.dart';
import 'package:practice_netflix/widget/box_slider.dart';
import 'package:practice_netflix/widget/carousel_slider.dart';
import 'package:practice_netflix/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': 'first movie',
      'keyword': 'romance/fantacy',
      'poster': 'movie1.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'first movie',
      'keyword': 'romance/fantacy',
      'poster': 'movie1.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'first movie',
      'keyword': 'romance/fantacy',
      'poster': 'movie1.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'first movie',
      'keyword': 'romance/fantacy',
      'poster': 'movie1.jpg',
      'like': false
    }),
    Movie.fromMap({
      'title': 'first movie',
      'keyword': 'romance/fantacy',
      'poster': 'movie1.jpg',
      'like': false
    })
  ];
  
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Stack(children: <Widget>[
        CarouselImage(movies: movies),
        TopBar(),
      ]),
      CircleSlider(movies: movies),
      BoxSlider(movies: movies),
    ]);

  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset('images/logo.jpg',
        fit: BoxFit.contain,
        height: 25,),
        Container(
          padding: EdgeInsets.only(right:1),
          child: Text('TV Program',
          style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right:1),
          child: Text('Movies',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: EdgeInsets.only(right:1),
          child: Text('My List',
            style: TextStyle(fontSize: 14),
          ),
        ),
        ],
    ),
    );
  }
}
