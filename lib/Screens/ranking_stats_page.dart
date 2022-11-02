import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class RankingStatsPage extends StatefulWidget {
  const RankingStatsPage({Key? key}) : super(key: key);

  @override
  State<RankingStatsPage> createState() => _RankingStatsPageState();
}

class _RankingStatsPageState extends State<RankingStatsPage> {
  var _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final iconList = <IconData>[
      Icons.home_outlined,
      Icons.lightbulb_outlined,
      Icons.notifications_none_rounded,
      Icons.person_outline_rounded,
    ];
    bool isOrientationLandscape() {
      return size.width > size.height;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        backgroundColor: const Color(0xffffffff),
        // inactiveColor: Colors.white54,
        // activeColor: Colors.white,
        activeIndex: _bottomNavIndex,
        iconSize: 27,
        splashRadius: 31,
        splashColor: Colors.deepPurpleAccent,
        splashSpeedInMilliseconds: 500,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/menuIcon.png',
                      width: (size.width - 44) * .11,
                      height: (size.width - 44) * .11,
                    ),
                    SizedBox(
                      width: (size.width - 44) * .11,
                    ),
                    SizedBox(
                      width: !isOrientationLandscape()
                          ? (size.width - 44) * .52
                          : (size.height - 44) * .52,
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/wavingHand.png',
                              width: !isOrientationLandscape()
                                  ? (size.width - 44) * .13
                                  : (size.height - 44) * .13,
                              height: !isOrientationLandscape()
                                  ? (size.width - 44) * .13
                                  : (size.height - 44) * .13,
                            ),
                            const Text(
                              'hello anas!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 21),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: (size.width - 44) * .11,
                    ),
                    Container(
                      width: !isOrientationLandscape()
                          ? (size.width - 44) * .15
                          : (size.height - 44) * .15,
                      height: !isOrientationLandscape()
                          ? (size.width - 44) * .15
                          : (size.height - 44) * .15,
                      decoration: BoxDecoration(
                          color: const Color(0xffE2DAFD),
                          borderRadius: BorderRadius.circular(1000)),
                      child: Center(
                        child: Image.asset(
                          'assets/images/avatar.png',
                          width: (size.width - 44) * .11,
                          height: (size.width - 44) * .11,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                SizedBox(
                  width: size.width,
                  height: size.width * .59,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        // top: size,
                        child: Container(
                          width: size.width,
                          height: size.width * .49,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            gradient: const LinearGradient(
                              colors: [Color(0xffffffff), Color(0xff5096F1)],
                              begin: Alignment.topRight,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: size.width * .14,
                        left: 0,
                        right: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: (size.width - 22) * .41,
                                  child: Padding(
                                    padding: EdgeInsets.all(size.width * .03),
                                    child: const Center(
                                      child: Text(
                                        'See\nRankings',
                                        style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Image.asset(
                                    'assets/images/rankingSecondPageLogo.png',
                                    width: !isOrientationLandscape()
                                        ? size.width * .45
                                        : size.width * .45,
                                    height: !isOrientationLandscape()
                                        ? size.width * .45
                                        : size.width * .45,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: size.width * .03,
                        left: size.width * .03,
                        right: size.width * .03,
                        child: Center(
                          child: Container(
                              width: size.width,
                              height: size.width * .11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 7.0),
                                  child: TextFormField(
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.text,
                                    decoration: const InputDecoration(
                                        alignLabelWithHint: true,
                                        icon: Icon(Icons.search),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        contentPadding:
                                            EdgeInsets.only(left: -3),
                                        hintText: "what do you want to learn?"),
                                  ),
                                ),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: [
                    Card(
                      elevation: 0,
                      color: const Color(0x11000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11.0, vertical: 7),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: Icon(
                                Icons.sports_cricket_outlined,
                                size: 19,
                              ),
                            ),
                            Text('cricket')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: const Color(0x11000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11.0, vertical: 7),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: Icon(
                                Icons.sports_soccer,
                                size: 19,
                              ),
                            ),
                            Text('football')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: const Color(0x11000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11.0, vertical: 7),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: Icon(
                                Icons.sports_handball,
                                size: 19,
                              ),
                            ),
                            Text('badminton')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: const Color(0x11000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11.0, vertical: 7),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: Icon(
                                Icons.directions_run,
                                size: 19,
                              ),
                            ),
                            Text('walking')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: const Color(0x11000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11.0, vertical: 7),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: Icon(
                                Icons.sports_kabaddi_sharp,
                                size: 19,
                              ),
                            ),
                            Text('kabaddi')
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 0,
                      color: const Color(0x11000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11.0, vertical: 7),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: Icon(
                                Icons.sports_tennis,
                                size: 19,
                              ),
                            ),
                            Text('tennis')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.stars),
                    SizedBox(
                      width: 11,
                    ),
                    Text(
                      'Player of the month',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                    )
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Container(
                            width: (size.width - 44 - 8) * .5,
                            // height: (size.width - 44 - 16) * .5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0x11000000),
                              // color: Color(0xffAD9BFF),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // SizedBox(height: (size.width - 44 - 16) * .01),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, bottom: 21, top: 15, right: 15),
                                  child: Container(
                                    width: !isOrientationLandscape()
                                        ? (size.width - 44 - 16) * .31
                                        : (size.height - 44 - 16) * .31,
                                    height: !isOrientationLandscape()
                                        ? (size.width - 44 - 16) * .31
                                        : (size.height - 44 - 16) * .31,
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xffffffff),
                                            Color(0xff5096F1)
                                          ],
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomCenter,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(1000),
                                        color: Colors.white),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/avatar3.png',
                                        width: (size.width - 44 - 16) * .19,
                                        height: (size.width - 44 - 16) * .19,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.0, bottom: 5, right: 15),
                                  child: Text(
                                    'Anas Ansary',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.0, bottom: 17, right: 15),
                                  child: Text(
                                    'Tennis',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17, bottom: 17),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.thumb_up_alt_outlined,
                                        size: 19,
                                        color: Color(0xff4A8EE8),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        '1581',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff4A8EE8),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Container(
                            width: (size.width - 44 - 8) * .5,
                            // height: (size.width - 44 - 16) * .5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0x11000000),
                              // color: Color(0xffAD9BFF),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // SizedBox(height: (size.width - 44 - 16) * .01),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, bottom: 21, top: 15, right: 15),
                                  child: Container(
                                    width: !isOrientationLandscape()
                                        ? (size.width - 44 - 16) * .31
                                        : (size.height - 44 - 16) * .31,
                                    height: !isOrientationLandscape()
                                        ? (size.width - 44 - 16) * .31
                                        : (size.height - 44 - 16) * .31,
                                    decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          colors: [
                                            Color(0xffffffff),
                                            Color(0xff5096F1)
                                          ],
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomCenter,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(1000),
                                        color: Colors.white),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/avatar4.png',
                                        width: (size.width - 44 - 16) * .19,
                                        height: (size.width - 44 - 16) * .19,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.0, bottom: 5, right: 15),
                                  child: Text(
                                    'Shahriar inan',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.0, bottom: 17, right: 15),
                                  child: Text(
                                    'Badminton',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 17, right: 17, bottom: 17),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.thumb_up_alt_outlined,
                                        size: 19,
                                        color: Color(0xff4A8EE8),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Text(
                                        '1581',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff4A8EE8),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
