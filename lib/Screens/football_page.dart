import 'package:flutter/material.dart';
import 'package:shoishob/Screens/football_career_stats.dart';
import 'package:shoishob/Screens/football_stats_page.dart';

class FootballPage extends StatefulWidget {
  const FootballPage({Key? key}) : super(key: key);

  @override
  State<FootballPage> createState() => _FootballPageState();
}

class _FootballPageState extends State<FootballPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    bool isOrientationLandscape() {
      return size.width > size.height;
    }

    return Scaffold(
      backgroundColor: const Color(0xff6B1EC5),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                child: Image.asset(
              'assets/images/footballFieldBG.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            )),
            Positioned(
              bottom: size.height * .05,
              child: Image.asset(
                'assets/images/footballFieldMarks.png',
                width: size.width,
              ),
            ),
            Positioned(
                bottom: size.height * .19,
                child: Image.asset(
                  'assets/images/footballPlayerLogo.png',
                  width: size.width,
                )),
            Positioned(
              right: 22,
              top: 22,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    size: 31,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: size.height * .11,
                  ),
                  const Text(
                    'Let\'s    \nPlay    ',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: size.width * .11,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FootballCareerStats()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 17),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: const [
                        Icon(Icons.bar_chart),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          'VIEW CAREER STATS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
