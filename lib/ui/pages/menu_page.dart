part of 'pages.dart';

class MenuPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage("https://scontent.fcgk18-1.fna.fbcdn.net/v/t1.6435-9/159902851_2023597117781416_8920989103309733742_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeF7JV6Ak-Jk3EtljOwrYnh9GKkqCuNh1agYqSoK42HVqKSLlcOXmFUDFDsgCzTkCaArAqhMNA-HB-wK_Gl65koI&_nc_ohc=CCQpLjHnk8QAX9nyu3Z&_nc_ht=scontent.fcgk18-1.fna&oh=f911eb1807b21f57787fd6537a4124ce&oe=60CFEFA8"),
                            fit: BoxFit.cover
                          )
                        ),

                      ),
                      SizedBox(width: 16,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("Good Morning,", style: greyFontStyle2,),
                          Text("Abiyyu Habibi", style: whiteFontStyle2.copyWith(color: Colors.white),)
                        ],),
                      )
                    ],),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/notif.png"),
                          fit: BoxFit.cover
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Movie", style: whiteFontStyle1.copyWith(color: Colors.white),),
                  Text("See More", style: greyFontStyle1,)
                ],
              ),
            ),
            SizedBox(height: 16,),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPage();
                      }));
              },
                          child: Container(
                height: 320,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(children: mockFav.map((e) => Padding(padding: EdgeInsets.only(
                      left: (e == mockFav.first) ? 24 : 0,
                      right: 24
                    ),
                    child: FavoriteMovie(e),)).toList(),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("TV Series", style: whiteFontStyle1.copyWith(color: Colors.white),),
                  Text("See More", style: greyFontStyle1,)
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
               Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailPage2();
                            }));
              },
                child: Container(
                height: 270,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      children: mockSeries.map((e) => Padding(padding: EdgeInsets.only(
                        top: 16,
                        right: 24,
                        left: 24
                      ), child: SeriesMovie(e),)).toList(),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}