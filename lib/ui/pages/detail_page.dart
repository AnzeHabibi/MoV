part of 'pages.dart';

class DetailPage extends StatelessWidget {
  LaunchUrl(String url) async {
        launch(url);
    }
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
          ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MainPage();
                            }));
                          },
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/btn_back.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Detail Movie",
                            style:
                                whiteFontStyle1.copyWith(color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 18,
                          width: 12,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/btn_save.png"),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 420,
                      width: MediaQuery.of(context).size.width - (2 * 24),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(
                              image: AssetImage("assets/avatar2_poster.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Avatar",
                            style: whiteFontStyle1.copyWith(
                                color: Colors.white, fontSize: 24),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                "Director: Jamaes Cameron",
                                style: newgreyFontStyle,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 14,
                                width: 1,
                                color: Color(0xff696D74),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                MdiIcons.star,
                                size: 14,
                                color: Color(0xffFFA235),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "4.9",
                                style: newgreyFontStyle,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff252932),
                                ),
                                child: Text(
                                  "Drama",
                                  style: newgreyFontStyle,
                                ),
                              ),
                              SizedBox(width: 12),
                              Container(
                                padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff252932),
                                ),
                                child: Text(
                                  "Supernatural fiction",
                                  style: newgreyFontStyle,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "Stroyline",
                            style: whiteFontStyle1.copyWith(fontSize: 24),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width -
                                    (2 * 24),
                                child: Text(
                                  "When his brother is killed in a robbery, paraplegic Marine Jake Sully decides to take his place in a mission on the distant world of Pandora.  ",
                                  style: greyFontStyle1.copyWith(
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Read More",
                                  style: greyFontStyle1.copyWith(
                                    color: Color(0xff546EE5),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 100,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width - (2 * 24),
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      LaunchUrl("https://www.youtube.com/v/c4LtoWQaLxk");
                    },
                    child: Text("Watch Movie",
                        style: whiteFontStyle1.copyWith(
                          fontSize: 18,
                        )),
                    color: Color(0xff546EE5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 32),
        ],
      )),
    );
  }
}
