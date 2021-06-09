part of 'model.dart';

class Fav {
  final int id;
  final String title;
  final double rate;
  final String poster;
  final String director;
  final String genre;
  final String des;

  Fav(
      {this.des,
      this.director,
      this.genre,
      this.id,
      this.poster,
      this.rate,
      this.title});
}

var mockFav = [
  Fav(
    id: 1,
    title: 'Avatar',
    rate: 4.9,
    poster: 'assets/avatar_poster.png'
   ),
   Fav(
    id: 1,
    title: 'Joker',
    rate: 4.4,
    poster: 'assets/joker_poster.png'
   ),
   Fav(
    id: 3,
    title: 'Raya the Last Dragon',
    rate: 4.1,
    poster: 'assets/raya_poster.png'
   ),
];
