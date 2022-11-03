import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body2 extends StatefulWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: size.height * .05,
        ),
        Image.asset('assets/images/header1.png'),
        const Padding(
          padding: EdgeInsets.only(top: 17.0, left: 17),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text('MEDALS (55)')),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  width: size.width * .31,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset('assets/images/gold.png'),
                      ),
                      const Text('Gold', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0x55EAB021)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                            child: Text('25', style: TextStyle(color: Colors.deepOrangeAccent),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),Container(
                width: size.width * .31,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Image.asset('assets/images/silver.png'),
                    ),
                    const Text('Silver', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0x55717484)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                          child: Text('19', style: TextStyle(color: Color(0xff717484)),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Container(
                  width: size.width * .31,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset('assets/images/bronze.png'),
                      ),
                      const Text('Bronze', style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0x55AA9083)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                            child: Text('11', style: TextStyle(color: Color(0xffAA9083)),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 17.0, left: 17),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text('CERTIFICATES (8)')),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset('assets/images/silver_medal.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.0),
                        child: Text(
                          'Sports Safety\nProtocols',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0x55717484)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                            child: Text('Silver Certified', style: TextStyle(color: Color(0xff717484)),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Image.asset('assets/images/bronze_medal.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.0),
                      child: Text(
                        'Facilities And\nMaintenance',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0x55AA9083)
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                          child: Text('Bronze Certified', style: TextStyle(color: Color(0xffAA9083)),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(17.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset('assets/images/gold_medal.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.0),
                        child: Text(
                          'Safety And\nSecurity',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0x55EAB021)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 3),
                            child: Text('Gold Certified', style: TextStyle(color: Colors.deepOrangeAccent),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
