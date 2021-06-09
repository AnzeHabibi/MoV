part of 'widget.dart';

class FavoriteMovie extends StatelessWidget {
  final Fav fav;
  FavoriteMovie(this.fav);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 250,
          width: 190,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage(fav.poster),
                  fit: BoxFit.cover)),
        ),
        SizedBox(height: 12),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fav.title,
                style: whiteFontStyle2,
              ),
              SizedBox(
                height: 2,
              ),
              Rating(
                rate: fav.rate,
              )
            ],
          ),
        )
      ],
    );
  }
}
