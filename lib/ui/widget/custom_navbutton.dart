part of 'widget.dart';

class CustomNavbutton extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomNavbutton({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: Color(0xff141820),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(0);
              }
            },
            child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/ic_home" +
                          ((selectedIndex == 0) ? "_on.png" : "_off.png")),
                      fit: BoxFit.contain),
                )),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(1);
              }
            },
            child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/ic_save" +
                          ((selectedIndex == 1) ? "_on.png" : "_off.png")),
                      fit: BoxFit.contain),
                )),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap(2);
              }
            },
            child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/ic_profile" +
                          ((selectedIndex == 2) ? "_on.png" : "_off.png")),
                      fit: BoxFit.contain),
                )),
          ),
        ],
      ),
    );
  }
}
