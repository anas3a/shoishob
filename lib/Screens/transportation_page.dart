import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class TransportationPage extends StatefulWidget {
  const TransportationPage({Key? key}) : super(key: key);

  @override
  State<TransportationPage> createState() => _TransportationPageState();
}

class _TransportationPageState extends State<TransportationPage> {
  var _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final iconList = <IconData>[
      Icons.drive_eta_outlined,
      Icons.bookmark_border,
      Icons.airplane_ticket_outlined,
      Icons.settings_outlined,
      // Icons.brightness_5,
      // Icons.brightness_4,
      // Icons.brightness_6,
      // Icons.brightness_7,
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
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: !isOrientationLandscape()
                          ? (size.width - 44) * .09
                          : (size.height - 44) * .09,
                    ),
                    SizedBox(
                      width: !isOrientationLandscape()
                          ? (size.width - 44) * .72
                          : (size.width - 44) - (size.height - 44) * .28,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: !isOrientationLandscape()
                          ? (size.width - 44) * .19
                          : (size.height - 44) * .19,
                      height: !isOrientationLandscape()
                          ? (size.width - 44) * .19
                          : (size.height - 44) * .19,
                      decoration: BoxDecoration(
                          color: const Color(0xff2B5AB5),
                          borderRadius: BorderRadius.circular(1000)),
                      child: Center(
                        child: Image.asset(
                          'assets/images/avatar2.png',
                          width: (size.width - 44) * .13,
                          height: (size.width - 44) * .13,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .11
                      : size.height * .11,
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x11000000),
                            offset: Offset(
                              1.0,
                              5.0,
                            ),
                            blurRadius: 19.0,
                            spreadRadius: 5.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(21.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'From',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: !isOrientationLandscape()
                                  ? size.width * .03
                                  : size.height * .03,
                            ),
                            const Text(
                              '       Agrabad',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: !isOrientationLandscape()
                                  ? size.width * .03
                                  : size.height * .03,
                            ),
                            const Divider(
                              height: 1,
                              color: Colors.black38,
                            ),
                            SizedBox(
                              height: !isOrientationLandscape()
                                  ? size.width * .03
                                  : size.height * .03,
                            ),
                            const Text(
                              'To',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: !isOrientationLandscape()
                                  ? size.width * .03
                                  : size.height * .03,
                            ),
                            const Text(
                              '       Sports park',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 21,
                      top: 0,
                      bottom: 0,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: size.width * .17,
                                height: size.width * .17,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: const Color(0xff7867E4),
                                ),
                                child: Image.asset(
                                  'assets/images/bookingLogo.png',
                                  width: 35,
                                  height: 35,
                                )),
                          ]),
                    )
                  ],
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .05
                      : size.height * .05,
                ),
                Row(
                  children: [
                    Container(
                        width: size.width * .13,
                        height: size.width * .13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: const Color(0x50A0A0A0),
                        ),
                        child: const Icon(
                          Icons.info_outline,
                          color: Colors.black38,
                        )),
                    SizedBox(
                      width: !isOrientationLandscape()
                          ? size.width * .03
                          : size.height * .03,
                    ),
                    Container(
                        width: (size.width - 44) - (size.width) * .16,
                        height: size.width * .13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: const Color(0xff9782FC),
                        ),
                        child: const Center(
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          )
                        )),
                  ],
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .05
                      : size.height * .05,
                ),
                SizedBox(
                  width: size.width,
                  height: !isOrientationLandscape() ? (size.width - 44) * .85 : (size.height - 44) * .85,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        // top: size,
                        child: Container(
                          width: (size.width - 44),
                          height: (size.width - 44) * .69,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            gradient: const LinearGradient(
                              colors: [Color(0xffffffff), Color(0xFF969595)],
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child:
                        Image.asset(
                          'assets/images/transportationLogo.png',
                          width: !isOrientationLandscape()
                              ? (size.width - 44) * .85
                              : (size.height - 44) * .85,
                          height: !isOrientationLandscape()
                              ? (size.width - 44) * .85
                              : (size.height - 44) * .85,
                        ),
                      ),
                      Positioned(
                          left: 17,
                          top: !isOrientationLandscape()
                              ? (size.width - 44) * .14 + 19
                              : (size.height - 44) * .14 + 19,
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'COVID-19',
                            style: TextStyle(
                              color: Color(0xFF242A88),
                              fontSize: 13,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(
                            height: !isOrientationLandscape()
                                ? size.width * .07
                                : size.height * .07,
                          ),
                          const Text(
                            'Stay safe',
                            style: TextStyle(
                              color: Color(0xFF242A88),
                              fontSize: 21,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(
                            height: 05,
                          ),
                          const Text(
                            'Put on mask!',
                            style: TextStyle(
                              color: Color(0xFF943870),
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: const Color(0xFF943870),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 19.0, vertical: 9),
                              child: Text(
                                'Learn more',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
