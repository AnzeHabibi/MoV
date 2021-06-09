part of 'widget.dart';

class Rating extends StatelessWidget {
  final double rate;

  Rating({this.rate});
  @override
  Widget build(BuildContext context) {
    int numberOfStar = rate.round();
    return Row(
      children: List<Widget>.generate(5, (index) => Icon((index < numberOfStar)? MdiIcons.star : MdiIcons.starOutline, size: 14, color: Color(0xffFFA235),)) +
      [
        SizedBox(width: 6,),
        Text(rate.toString(),
        style: greyFontStyle2,)
      ]
    );
  }
}
