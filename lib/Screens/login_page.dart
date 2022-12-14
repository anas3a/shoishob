import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    bool isOrientationLandscape(){
      return size.width > size.height;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: isOrientationLandscape() ? size.width * .15 : 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset('assets/images/logInPageLogo.png',
                  width: !isOrientationLandscape() ? size.width * .81 : size.height * .61,
                  height: !isOrientationLandscape() ? size.width * .81 : size.height * .61,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF3C148F),
                  ),
                ),
                const Text(
                  'Please login to continue',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFD64682),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Material(
                  elevation: 10,
                  shadowColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.mail_outline,
                      ),
                    ),
                    onChanged: (value) {
                      // user.email = value.toString();
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 10,
                  shadowColor: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  child: TextField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.password,
                      ),
                    ),
                    onChanged: (value) {
                      // user.password = value.toString();
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Card(
                      color: const Color(0xFF8C77CE),
                      elevation: 7,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/singUp_page');
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFF3C148F),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
