import 'package:flutter/material.dart';
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

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * .05,
          ),
          Image.asset('assets/images/header1.png'),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
