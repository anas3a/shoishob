import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoishob/Screens/profile_body1.dart';
import 'package:shoishob/Screens/profile_body2.dart';
import 'package:shoishob/Screens/profile_body3.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  var color1 = 0xFF1E88E5, color2 = 0xff000000, color3 = 0xff000000, index = 1;

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset('assets/images/menuIcon.png',
                  width: 35,
                    height: 35,
                  ),
                ),
                Padding(padding: const EdgeInsets.all(17),
                child: Image.asset('assets/images/profilePicture.png'),),
                const Text('Anas Ansary',style: TextStyle(color: Colors.blue, fontSize: 19, fontWeight: FontWeight.bold),),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('ID 98946348',style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),),
            ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            index = 1;
                            color1 = 0xFF1E88E5;
                            color2 = 0xff000000;
                            color3 = 0xff000000;
                          });
                        },
                        child: Text('STATS',
                        style: TextStyle(color: Color(color1), fontWeight: FontWeight.bold),),
                      ),
                      GestureDetector(
                        onTap: (){
                        setState(() {
                          index = 2;
                          color1 = 0xff000000;
                          color2 = 0xFF1E88E5;
                          color3 = 0xff000000;
                        });
                      },
                        child: Text('ACHIEVEMENTS',
                          style: TextStyle(color: Color(color2), fontWeight: FontWeight.bold),),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            index = 3;
                            color1 = 0xff000000;
                            color2 = 0xff000000;
                            color3 = 0xFF1E88E5;
                          });
                        },
                        child: Text('ACTIVITIES',
                          style: TextStyle(color: Color(color3), fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                index == 1? Body1() : index == 2? Body2() : Body3()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
