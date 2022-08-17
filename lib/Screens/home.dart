import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  var _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final iconList = <IconData>[
      Icons.home_outlined,
      Icons.star_border_purple500_rounded,
      // Icons.brightness_5,
      // Icons.brightness_4,
      // Icons.brightness_6,
      // Icons.brightness_7,
    ];
    bool isOrientationLandscape() {
      return size.width > size.height;
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xffAD9BFF), Color(0xff9079FB)])),
            child: Center(
                child: Image.asset(
              'assets/images/trending.png',
              width: 35,
              height: 35,
            ))),
        onPressed: () {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        backgroundColor: const Color(0xffAD9BFF),
        // inactiveColor: Colors.white54,
        // activeColor: Colors.white,
        activeIndex: _bottomNavIndex,
        iconSize: 30,
        splashRadius: 31,
        splashSpeedInMilliseconds: 500,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        width: (size.width - 44) * .52,
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/wavingHand.png',
                                width: (size.width - 44) * .13,
                                height: (size.width - 44) * .13,
                              ),
                              const Text(
                                'hello kira!',
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
                        width: (size.width - 44) * .15,
                        height: (size.width - 44) * .15,
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
                                colors: [Color(0xffFFC2F8), Color(0xff5096F1)],
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
                                          'Find\nPlaces',
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
                                      'assets/images/homePageLogo.png',
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
                                          hintText:
                                              "what do you want to learn?"),
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
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 15),
                            child: Container(
                              width: (size.width - 44 - 16) * .5,
                              // height: (size.width - 44 - 16) * .5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffAD9BFF),
                                    Color(0xff9079FB),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),

                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xffAD9BFF),
                                    offset: Offset(
                                      -1.0,
                                      5.0,
                                    ),
                                    blurRadius: 19.0,
                                    spreadRadius: 5.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                                // color: Color(0xffAD9BFF),
                              ),
                              child: Stack(
                                children: [
                                  const Positioned(
                                      right: 11,
                                      top: 17,
                                      child: Icon(Icons.arrow_forward_ios,
                                          color: Colors.white)),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: (size.width - 44 - 16) * .11),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, left: 3),
                                        child: Image.asset(
                                          'assets/images/runningLogo.png',
                                          width: (size.width - 44 - 16) * .21,
                                          height: (size.width - 44 - 16) * .21,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'Sports',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.0, top: 11),
                                        child: Text(
                                          '★ 4.9',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.0, bottom: 17),
                                        child: Text(
                                          '2468 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: (size.width - 44 - 16) * .5,
                              // height: (size.width - 44 - 16) * .5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff90F4CE),
                                    Color(0xff43DFA2)
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),

                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xff90F4CE),
                                    offset: Offset(
                                      -1.0,
                                      5.0,
                                    ),
                                    blurRadius: 19.0,
                                    spreadRadius: 5.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                                // color: Color(0xffAD9BFF),
                              ),
                              child: Stack(
                                children: [
                                  const Positioned(
                                      right: 11,
                                      top: 17,
                                      child: Icon(Icons.arrow_forward_ios,
                                          color: Colors.white)),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // SizedBox(height: (size.width - 44 - 16) * .01),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 3),
                                        child: Image.asset(
                                          'assets/images/busLogo.png',
                                          width: (size.width - 44 - 16) * .21,
                                          height: (size.width - 44 - 16) * .21,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'Transportation',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.0, top: 11),
                                        child: Text(
                                          '★ 4.9',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.0, bottom: 17),
                                        child: Text(
                                          '2468 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 15),
                            child: Container(
                              width: (size.width - 44 - 16) * .5,
                              // height: (size.width - 44 - 16) * .5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffFFB9B8),
                                    Color(0xffFE8B88)
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),

                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xffFFB9B8),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 19.0,
                                    spreadRadius: 5.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                                // color: Color(0xffAD9BFF),
                              ),
                              child: Stack(
                                children: [
                                  const Positioned(
                                      right: 11,
                                      top: 17,
                                      child: Icon(Icons.arrow_forward_ios,
                                          color: Colors.white)),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // SizedBox(height: (size.width - 44 - 16) * .01),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 3),
                                        child: Image.asset(
                                          'assets/images/healthLogo.png',
                                          width: (size.width - 44 - 16) * .21,
                                          height: (size.width - 44 - 16) * .21,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'Health',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.0, top: 11),
                                        child: Text(
                                          '★ 4.9',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.0, bottom: 17),
                                        child: Text(
                                          '2468 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: (size.width - 44 - 16) * .5,
                              // height: (size.width - 44 - 16) * .5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xff89D7FD),
                                    Color(0xff5ABCED)
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xff89D7FD),
                                    offset: Offset(
                                      1.0,
                                      5.0,
                                    ),
                                    blurRadius: 19.0,
                                    spreadRadius: 5.0,
                                  ), //BoxShadow
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ), //BoxShadow
                                ],
                                // color: Color(0xffAD9BFF),
                              ),
                              child: Stack(
                                children: [
                                  const Positioned(
                                      right: 11,
                                      top: 17,
                                      child: Icon(Icons.arrow_forward_ios,
                                          color: Colors.white)),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: (size.width - 44 - 16) * .11),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, left: 3),
                                        child: Image.asset(
                                          'assets/images/rankingLogo.png',
                                          width: (size.width - 44 - 16) * .21,
                                          height: (size.width - 44 - 16) * .21,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Text(
                                          'Ranking',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 19,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.0, top: 11),
                                        child: Text(
                                          '★ 4.9',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            left: 15.0, bottom: 17),
                                        child: Text(
                                          '2468 reviews',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
