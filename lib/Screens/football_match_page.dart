import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoishob/Screens/football_page.dart';

class FootballMatchPage extends StatefulWidget {
  const FootballMatchPage({Key? key}) : super(key: key);

  @override
  State<FootballMatchPage> createState() => _FootballMatchPageState();
}

class _FootballMatchPageState extends State<FootballMatchPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: SafeArea(
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/svg files/footballSearchBar.svg',
                  width: size.width,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FootballPage()));
                        },
                        child: SvgPicture.asset(
                          'assets/images/svg files/Frame 7.svg',
                          width: size.width * .31,
                          height: size.width * .31,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/svg files/Frame 10.svg',
                        width: size.width * .31,
                        height: size.width * .31,
                      ),
                      SvgPicture.asset(
                        'assets/images/svg files/Frame 10.svg',
                        width: size.width * .31,
                        height: size.width * .31,
                      ),
                      SvgPicture.asset(
                        'assets/images/svg files/Frame 7.svg',
                        width: size.width * .31,
                        height: size.width * .31,
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/svg files/footballHeaderCard.svg',
                  width: size.width,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/svg files/teamScoreCards.svg',
                        height: size.height * .11,
                        width: size.width * 1,
                      )
                    ],
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/svg files/title.svg',
                  width: size.width,
                ),
                SvgPicture.asset(
                  'assets/images/svg files/scores.svg',
                  width: size.width,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
