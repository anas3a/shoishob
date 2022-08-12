import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 20, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Image.asset('assets/images/welcomePageLogo.png'),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF3C148F),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    'to The Shoishob',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFD64682),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 15.0,
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3C148F),
                      ),
                    ),
                  ),
                ),
              ),
            ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                      'C E N T I L L I O N',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
