part of 'pages.dart';

class PlayVideo extends StatefulWidget {
  @override
  _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
            color: mainColor,
          ),
          SafeArea(
              child: Container(
            color: mainColor,
          )),
            AspectRatio(
              aspectRatio: 16 / 9,
              child: BetterPlayer.network(
                "https://www.youtube.com/watch?v=6ziBFh3V1aM",
                betterPlayerConfiguration: BetterPlayerConfiguration(
                  aspectRatio: 16 / 9,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

