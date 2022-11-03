import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body1 extends StatefulWidget {
  const Body1({Key? key}) : super(key: key);

  @override
  State<Body1> createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return
      SingleChildScrollView(
        child: Column(
          children: [
            SvgPicture.asset('assets/images/svg files/prow1.svg'),
            Wrap(
              children: [

                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text('33% ', style: TextStyle(color: Colors.green, fontSize: 19, fontWeight: FontWeight.bold),),
                    Text(' improvement    |    ', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text('-26% ', style: TextStyle(color: Colors.blueAccent, fontSize: 19, fontWeight: FontWeight.bold),),
                    Text(' screen time.', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text('Level Up', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 11,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/cricket.png',
                          width: size.width * .19,
                          height: size.width * .19,),
                        SizedBox(
                          width: 17,
                        ),
                        Text('Cricket',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                          ),),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Text('28%',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                ),),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/football.png',
                          width: size.width * .19,
                          height: size.width * .19,),
                        SizedBox(
                          width: 17,
                        ),
                        Text('Football',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                          ),),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Text('35%',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                ),),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/badminton.png',
                          width: size.width * .19,
                          height: size.width * .19,),
                        SizedBox(
                          width: 17,
                        ),
                        Text('Badminton',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                          ),),
                        Expanded(
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Text('40%',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17
                                ),),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}
