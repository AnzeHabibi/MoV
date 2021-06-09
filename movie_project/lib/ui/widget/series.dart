part of 'widget.dart';

class SeriesMovie extends StatelessWidget {
  final Series series;

  SeriesMovie(this.series);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage(series.poster),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              series.genre,
              style: greyFontStyle2,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              series.title,
              style: whiteFontStyle2,
            ),
            SizedBox(
              height: 2,
            ),
            Rating(
              rate: series.rate,
            )
          ],
        )
      ],
    );
  }
}
