import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FootballCareerStats extends StatefulWidget {
  const FootballCareerStats({Key? key}) : super(key: key);

  @override
  State<FootballCareerStats> createState() => _FootballCareerStatsState();
}

class _FootballCareerStatsState extends State<FootballCareerStats> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff6B1EC5),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    // height: size.height * .29,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/fieldShort.png',
                            ),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                size: 31,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            height: 17,
                          ),
                          const Text(
                            'Shahriar\nAnsary (IIUC)',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          const Text(
                            '#10',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 31.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Colors.black.withOpacity(.05),
                          ),
                          width: size.width * .29,
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Column(
                              children: const [
                                SizedBox(
                                  height: 21,
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 41,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                Text(
                                  'Goals',
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 11,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Colors.black.withOpacity(.05),
                          ),
                          width: size.width * .29,
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Column(
                              children: const [
                                SizedBox(
                                  height: 21,
                                ),
                                Text(
                                  '18',
                                  style: TextStyle(
                                      fontSize: 41,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                Text(
                                  'Age',
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 11,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Colors.black.withOpacity(.05),
                          ),
                          width: size.width * .29,
                          child: Padding(
                            padding: const EdgeInsets.all(7),
                            child: Column(
                              children: const [
                                SizedBox(
                                  height: 21,
                                ),
                                Text(
                                  'ST',
                                  style: TextStyle(
                                      fontSize: 41,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(
                                  color: Colors.black,
                                ),
                                Text(
                                  'Position',
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 11,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(22.0),
                    child: Text(
                      'Teams Played For',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: size.width * .21,
                        height: size.width * .21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/images/svg files/teamIcon2.svg',
                            fit: BoxFit.contain,
                            width: size.width * .15,
                            height: size.width * .15,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * .21,
                        height: size.width * .21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/images/svg files/teamIcon4.svg',
                            fit: BoxFit.contain,
                            width: size.width * .15,
                            height: size.width * .15,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * .21,
                        height: size.width * .21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(
                            width: 2,
                            color: Colors.grey,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/images/svg files/teamIcon2.svg',
                            fit: BoxFit.contain,
                            width: size.width * .15,
                            height: size.width * .15,
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * .21,
                        height: size.width * .21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.grey),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/images/svg files/teamIcon4.svg',
                            fit: BoxFit.contain,
                            width: size.width * .15,
                            height: size.width * .15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: SvgPicture.asset(
                      'assets/images/svg files/footballMatchCard.svg',
                      fit: BoxFit.cover,
                      width: size.width,
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
