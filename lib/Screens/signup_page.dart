import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Center(
                    child: Image.asset('assets/images/signUpPageLogo.png',
                        height: 250)),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF3C148F),
                  ),
                ),
                const Text(
                  "Create an account, it's free",
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
                      labelText: 'Name',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                    ),
                    onChanged: (value) {},
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
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.numbers,
                      ),
                    ),
                    onChanged: (value) {},
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
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF8C77CE),
                        shadowColor: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 10.0,
                      ),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
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
                    const Text("Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/logIn_page');
                      },
                      child: const Text(
                        "Login",
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
