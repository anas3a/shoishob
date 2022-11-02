import 'package:flutter/material.dart';

class HealthPage extends StatefulWidget {
  const HealthPage({Key? key}) : super(key: key);

  @override
  State<HealthPage> createState() => _HealthPageState();
}

class _HealthPageState extends State<HealthPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    bool isOrientationLandscape() {
      return size.width > size.height;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                    SizedBox(
                      width: !isOrientationLandscape()
                          ? (size.width - 44) * .72
                          : (size.width - 44) - (size.height - 44) * .28,
                    ),
                    Icon(
                      Icons.more_vert,
                      size: !isOrientationLandscape()
                          ? (size.width - 44) * .09
                          : (size.height - 44) * .09,
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.0),
                  child: Text(
                    'Good morning,\nanas!',
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .07
                      : size.height * .07,
                ),
                Center(
                  child: Container(
                      width: size.width,
                      height: !isOrientationLandscape()
                          ? size.width * .11
                          : size.height * .11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
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
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7.0),
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
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding: EdgeInsets.only(left: -3),
                                hintText: "what do you want to learn?"),
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .09
                      : size.height * .09,
                ),
                const Text(
                  'Most popular',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .045
                      : size.height * .045,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Container(
                            width: (size.width - 44 - 8) * .5,
                            // height: (size.width - 44 - 16) * .5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0xff43C2DD),
                              // color: Color(0xffAD9BFF),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // SizedBox(height: (size.width - 44 - 16) * .01),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, bottom: 31, top: 15),
                                  child: Container(
                                    width: !isOrientationLandscape()
                                        ? (size.width - 44 - 16) * .21
                                        : (size.height - 44 - 16) * .21,
                                    height: !isOrientationLandscape()
                                        ? (size.width - 44 - 16) * .21
                                        : (size.height - 44 - 16) * .21,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(1000),
                                        color: Colors.white),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/toothLogo.png',
                                        width: (size.width - 44 - 16) * .19,
                                        height: (size.width - 44 - 16) * .19,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, bottom: 5),
                                  child: Text(
                                    'Dentistry',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, bottom: 17),
                                  child: Text(
                                    '70 doctors',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
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
                              borderRadius: BorderRadius.circular(21),
                              color: const Color(0xffF68181),
                              // color: Color(0xffAD9BFF),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // SizedBox(height: (size.width - 44 - 16) * .01),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15, bottom: 31, top: 15),
                                  child: Container(
                                    width: !isOrientationLandscape()
                                        ? (size.width - 44 - 16) * .21
                                        : (size.height - 44 - 16) * .21,
                                    height: !isOrientationLandscape()
                                        ? (size.width - 44 - 16) * .21
                                        : (size.height - 44 - 16) * .21,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(1000),
                                        color: Colors.white),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/images/heartLogo.png',
                                        width: (size.width - 44 - 16) * .19,
                                        height: (size.width - 44 - 16) * .19,
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, bottom: 5),
                                  child: Text(
                                    'Health',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, bottom: 17),
                                  child: Text(
                                    '27 doctors',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .07
                      : size.height * .07,
                ),
                const Text(
                  'Suggestions',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .03
                      : size.height * .03,
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x317C99E4),
                            offset: Offset(
                              1.0,
                              5.0,
                            ),
                            blurRadius: 17.0,
                            spreadRadius: 3.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Row(
                          children: [
                            Container(
                              width: !isOrientationLandscape()
                                  ? size.width * .11
                                  : size.height * .11,
                              height: !isOrientationLandscape()
                                  ? size.width * .11
                                  : size.height * .11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: const Color(0xffC193B8),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Health report',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'ready',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 17,
                      top: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 19,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .01
                      : size.height * .01,
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x317C99E4),
                            offset: Offset(
                              1.0,
                              5.0,
                            ),
                            blurRadius: 17.0,
                            spreadRadius: 3.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Row(
                          children: [
                            Container(
                              width: !isOrientationLandscape()
                                  ? size.width * .11
                                  : size.height * .11,
                              height: !isOrientationLandscape()
                                  ? size.width * .11
                                  : size.height * .11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: const Color(0xff2B5AB5),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Tracking',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'ready',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 17,
                      top: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 19,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .01
                      : size.height * .01,
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x317C99E4),
                            offset: Offset(
                              1.0,
                              5.0,
                            ),
                            blurRadius: 17.0,
                            spreadRadius: 3.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Row(
                          children: [
                            Container(
                              width: !isOrientationLandscape()
                                  ? size.width * .11
                                  : size.height * .11,
                              height: !isOrientationLandscape()
                                  ? size.width * .11
                                  : size.height * .11,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: const Color(0xffFDA803),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Safe training & meditation',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'processing',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w200),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 17,
                      top: 0,
                      bottom: 0,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 19,
                      ),
                    )
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
