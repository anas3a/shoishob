import 'package:flutter/material.dart';

class WorkOutPage extends StatefulWidget {
  const WorkOutPage({Key? key}) : super(key: key);

  @override
  State<WorkOutPage> createState() => _WorkOutPageState();
}

class _WorkOutPageState extends State<WorkOutPage> {
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
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.tune_rounded),
                    ),
                  ],
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .02
                      : size.height * .02,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Workout\nand Meditation',
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .02
                      : size.height * .02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Card(
                        elevation: 0,
                        color: const Color(0x11000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 11.0, vertical: 7),
                            child: Center(child: Text('Workout'))),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Card(
                        elevation: 0,
                        color: const Color(0x11000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 11.0, vertical: 7),
                            child: Center(child: Text('Meditation'))),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 0,
                        color: const Color(0x11000000),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 11.0, vertical: 7),
                            child: Center(child: Text('Power Training'))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * 0.05
                      : size.height * 0.05,
                ),
                Material(
                  elevation: 5,
                  shadowColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/image9-2.png',
                            width: !isOrientationLandscape()
                                ? size.width * .27
                                : size.height * .30,
                            height: !isOrientationLandscape()
                                ? size.width * .27
                                : size.height * .20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Meditation',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'level: very easy',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'duration: 17 minutes',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFFCFEAFF),
                                      shadowColor: Colors.black,
                                      textStyle: TextStyle(
                                        fontSize: 17
                                      )
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        'Start',
                                      ),
                                    ))
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * 0.05
                      : size.height * 0.05,
                ),
                Material(
                  elevation: 5,
                  shadowColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/image9-1.png',
                            width: !isOrientationLandscape()
                                ? size.width * .27
                                : size.height * .30,
                            height: !isOrientationLandscape()
                                ? size.width * .27
                                : size.height * .20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Warm-Up',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'level: very easy',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'duration 25 minutes',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFCFEAFF),
                                        shadowColor: Colors.black,
                                        textStyle: TextStyle(
                                            fontSize: 17
                                        )
                                    ),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        'Start',
                                      ),
                                    ))
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * 0.05
                      : size.height * 0.05,
                ),
                Material(
                  elevation: 5,
                  shadowColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/image9.png',
                            width: !isOrientationLandscape()
                                ? size.width * .27
                                : size.height * .30,
                            height: !isOrientationLandscape()
                                ? size.width * .27
                                : size.height * .20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Breathing Training',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'level: very easy',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'duration 35 minutes',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFCFEAFF),
                                        shadowColor: Colors.black,
                                        textStyle: TextStyle(
                                            fontSize: 17
                                        )
                                    ),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        'Start',
                                      ),
                                    ))
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * 0.05
                      : size.height * 0.05,
                ),
                Material(
                  elevation: 5,
                  shadowColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/image9-3.png',
                            width: !isOrientationLandscape()
                                ? size.width * .27
                                : size.height * .30,
                            height: !isOrientationLandscape()
                                ? size.width * .27
                                : size.height * .20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Workout',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'level: easy',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'duration 20 minutes',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFCFEAFF),
                                        shadowColor: Colors.black,
                                        textStyle: TextStyle(
                                            fontSize: 17
                                        )
                                    ),
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 20),
                                      child: Text(
                                        'Start',
                                      ),
                                    ))
                              ]),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * 0.05
                      : size.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
