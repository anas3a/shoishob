import 'package:flutter/material.dart';

class SportsPage extends StatefulWidget {
  const SportsPage({Key? key}) : super(key: key);

  @override
  State<SportsPage> createState() => _SportsPageState();
}

class _SportsPageState extends State<SportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Game Zone',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF172951),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded),
                    ),
                    IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(Icons.notifications_none_rounded),
                    )
                  ],
                ),
                const Text(
                  'Find your favourite games',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF747B8B),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 0,
                  shadowColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFEBF0F6),
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Search',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search_outlined,
                      ),
                    ),
                    onChanged: (value) {
                      // user.email = value.toString();
                    },
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Material(
                            elevation: 5,
                            shadowColor: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            child: InkWell(
                              onTap: (){
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                      Text(
                                        'Cricket',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF172951),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'last played 1 hour ago',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF747B8B),
                                        ),
                                      ),
                                    ]),
                                    const Spacer(),
                                    Icon(Icons.sports_cricket_outlined),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Material(
                            elevation: 5,
                            shadowColor: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            child: InkWell(
                              onTap: (){
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Football',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF172951),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'last played 2 days ago',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF747B8B),
                                            ),
                                          ),
                                        ]),
                                    const Spacer(),
                                    Icon(Icons.sports_soccer_outlined),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Material(
                            elevation: 5,
                            shadowColor: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            child: InkWell(
                              onTap: (){
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Kabaddi',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF172951),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'last played yesterday',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF747B8B),
                                            ),
                                          ),
                                        ]),
                                    const Spacer(),
                                    Icon(Icons.sports_kabaddi_outlined),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Material(
                            elevation: 5,
                            shadowColor: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            child: InkWell(
                              onTap: (){
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Tennis',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF172951),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'last played 3 hours ago',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF747B8B),
                                            ),
                                          ),
                                        ]),
                                    const Spacer(),
                                    Icon(Icons.sports_tennis_outlined),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Material(
                            elevation: 5,
                            shadowColor: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            child: InkWell(
                              onTap: (){
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Basketball',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF172951),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Never played before',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF747B8B),
                                            ),
                                          ),
                                        ]),
                                    const Spacer(),
                                    Icon(Icons.sports_basketball_rounded),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Material(
                            elevation: 5,
                            shadowColor: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            child: InkWell(
                              onTap: (){
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Martial Arts',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF172951),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'last played 5 days ago',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF747B8B),
                                            ),
                                          ),
                                        ]),
                                    const Spacer(),
                                    Icon(Icons.sports_martial_arts_rounded),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
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
