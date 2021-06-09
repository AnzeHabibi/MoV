part of 'model.dart';

class Series {
  final int id;
  final String title;
  final double rate;
  final String poster;
  final String director;
  final String genre;
  final String des;

  Series(
      {this.des,
      this.director,
      this.genre,
      this.id,
      this.poster,
      this.rate,
      this.title});
}

var mockSeries = [
  Series(
    id: 1,
    genre: 'Drama',
    title: 'Behind Her Eyes',
    rate: 4.9,
    poster: 'assets/behind2_poster.png'
   ),
   Series(
    id: 1,
    genre: 'Drama',
    title: 'Money Heist',
    rate: 4.4,
    poster: 'assets/heist_poster.png'
   ),
];
