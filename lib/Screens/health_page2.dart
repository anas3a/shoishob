import 'package:flutter/material.dart';
import 'package:app_usage/app_usage.dart';

double usage = 0;

class HealthPage2 extends StatefulWidget {
  const HealthPage2({Key? key}) : super(key: key);

  @override
  State<HealthPage2> createState() => _HealthPage2State();
}

class _HealthPage2State extends State<HealthPage2> {
  void getUsageStats() async {
    try {
      DateTime endDate = new DateTime.now();
      DateTime startDate = endDate.subtract(Duration(hours: 24));
      List<AppUsageInfo> infoList =
          await AppUsage.getAppUsage(startDate, endDate);

      double sum = 0;
      for (var info in infoList) {
        sum += (info.usage.inHours);
      }
      print(sum);
      setState(() {
        usage = sum;
      });
    } on AppUsageException catch (exception) {
      print(exception);
    }
  }

  @override
  void initState() {
    getUsageStats();
    super.initState();
  }

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
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    Text('Health Tracker',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.self_improvement_rounded, size: 40, color: Colors.deepPurple,),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, bottom: 0, top: 15, right: 15),
                  child: Container(
                    width: !isOrientationLandscape()
                        ? (size.width - 44 - 16) * .31
                        : (size.height - 44 - 16) * .31,
                    height: !isOrientationLandscape()
                        ? (size.width - 44 - 16) * .31
                        : (size.height - 44 - 16) * .31,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xffffffff), Color(0xff5096F1)],
                          begin: Alignment.topRight,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(1000),
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
                  padding: EdgeInsets.symmetric(vertical: 11.0),
                  child: Text(
                    'Anas Ansary',
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .03
                      : size.height * .03,
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
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Screen Usage Time',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '${usage.toString()} hours',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '2.0 hours less than yesterday',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ]),
                          const Spacer(),
                          Icon(Icons.bar_chart_rounded,
                              size: 60, color: Color(0xFF2395FF)),
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
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Blood Pressure (bpm)',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '130 / 90',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '15 min ago',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ]),
                          const Spacer(),
                          Icon(Icons.monitor_heart_rounded,
                              size: 60, color: Colors.redAccent),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .05
                      : size.height * .05,
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
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sleep',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7h 08m',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'of 8h sleep',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ]),
                          const Spacer(),
                          Icon(Icons.bed_rounded,
                              size: 60, color: Colors.indigoAccent),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .05
                      : size.height * .05,
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
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Calorie Intake Today',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '1900 kcal',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'of 2100 kcal',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ]),
                          const Spacer(),
                          Icon(Icons.fastfood,
                              size: 60, color: Colors.green),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .05
                      : size.height * .05,
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
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Calorie Burned Today',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '400 kcal',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'of 550 kcal',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ]),
                          const Spacer(),
                          Icon(Icons.fitness_center,
                              size: 60, color: Colors.blue),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: !isOrientationLandscape()
                      ? size.width * .05
                      : size.height * .05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
