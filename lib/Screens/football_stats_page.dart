import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FootballStatsPage extends StatefulWidget {
  const FootballStatsPage({Key? key}) : super(key: key);

  @override
  State<FootballStatsPage> createState() => _FootballStatsPageState();
}

class _FootballStatsPageState extends State<FootballStatsPage> {
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
          padding: const EdgeInsets.all(22),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      children: [
                        Wrap(
                          direction: Axis.vertical,
                          children: const [
                            Text('Hello Anas', style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 5,),
                            Text('Welcome back!', style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ],
                    ),
                    const Positioned(
                        right: 0,
                        child: Icon(Icons.arrow_back, size: 27,)),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                Container(
                    width: size.width,
                    height: size.width * .11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color(0x07000000),
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
                              "Search for a league, team, players, etc. "),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 21,
                ),
                const Text('Recent matches',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(
                  height: 11,
                ),
                SvgPicture.asset('assets/images/svg files/matchCard.svg',
                fit: BoxFit.cover,
                width: size.width - 44,),
                const SizedBox(
                  height: 21,
                ),
                const Text('Top Transfers',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                  ),),
                const SizedBox(
                  height: 11,
                ),
                SvgPicture.asset('assets/images/svg files/playerCard1.svg',
                fit: BoxFit.cover,
                width: size.width - 44,),
                const SizedBox(
                  height: 11,
                ),
                SvgPicture.asset('assets/images/svg files/playerCard2.svg',
                fit: BoxFit.cover,
                width: size.width - 44,),
                // Vec('assets/images/svg files/matchCard.svg', filterQuality: FilterQuality.high, )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
