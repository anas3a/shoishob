import 'package:flutter/material.dart';

class Body3 extends StatefulWidget {
  const Body3({Key? key}) : super(key: key);

  @override
  State<Body3> createState() => _Body3State();
}

class _Body3State extends State<Body3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
      return Padding(
        padding: const EdgeInsets.only(top: 17.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/images/gold.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Earned Gold Certification in Change Management',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/silver.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Completed Drive-Thru ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/bronze_medal.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Earned Bronze in Drive-Thru',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/bronze.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Earned Silver in Drive-Thru',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/silver_medal.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Earned Gold in Drive-Thru',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/bronze.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Completed Pre-Test in Customer Experience 101',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/gold.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Earned Gold Certification in Change Management',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/gold.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Earned Gold Certification in Change Management',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/gold.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Earned Gold Certification in Change Management',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/gold.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Earned Gold Certification in Change Management',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/images/gold.png',
                width: size.width * .15,
                height: size.width * .15,
                ),
                const Flexible(
                  child:
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text('Earned Gold Certification in Change Management',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    )
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 11.0 + size.width * .15),
                child: const Text('May 1, 20const 22 • 5/5 ',
                  style: TextStyle(fontSize: 13),),
              ),
            ),
          ],
    ),
      );
  }
}
