import 'package:flutter/material.dart';
import 'package:shoishob/Screens/ranking_stats_page.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    bool isOrientationLandscape() {
      return size.width > size.height;
    }

    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const RankingStatsPage()));
        },
        child: Container(
            width: (size.width - 44) * .19,
            height: (size.width - 44) * .19,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Colors.white,
            ),
            child: Center(
                child: Image.asset(
              'assets/images/playLogo.png',
              width: (size.width - 44) * .17,
              height: (size.width - 44) * .17,
            ))),
      ),
      backgroundColor: const Color(0xff458BE7),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/skyBG.png'),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Stack(
                children: [
                  SafeArea(
                    maintainBottomViewPadding: true,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: !isOrientationLandscape()
                              ? size.width * .11
                              : size.height * .11,
                        ),
                        Center(
                            child: Image.asset(
                          'assets/images/rankingPageLogo.png',
                          width: (size.width - 44) * .95,
                          height: (size.width - 44) * .95,
                        )),
                        SizedBox(
                          height: !isOrientationLandscape()
                              ? size.width * .11
                              : size.height * .11,
                        ),
                        const Text(
                          'You must not only have competitiveness but ability, regardless of the circumstance you face, to never quit.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21),
                        )
                      ],
                    ),
                  ),

                  // Positioned(
                  //     bottom: 22,
                  //     right: 0,
                  //     child: Container(
                  //       width: (size.width - 44) * .19,
                  //       height: (size.width - 44) * .19,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(17),
                  //         color: Colors.white,
                  //       ),
                  //       child: Center(
                  //           child: Image.asset(
                  //             'assets/images/playLogo.png',
                  //             width: (size.width - 44) * .17,
                  //             height: (size.width - 44) * .17,
                  //           )),
                  //     )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
