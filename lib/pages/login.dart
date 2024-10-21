import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iiitbhopal/components/log_and_Reg_button.dart';
import 'package:iiitbhopal/constants.dart';
import 'package:iiitbhopal/pages/home_page.dart';
import 'package:iiitbhopal/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String loginemail;
  late String loginpassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Hero(
                tag: "Animation",
                child: Image.asset(
                  "Images/Indian Institute of Information Technology Bhopal.png",
                  height: 140.0,
                  width: 180.0,
                ),
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                loginemail = value;
              },
              decoration:
                  kInputdecoration.copyWith(hintText: "Enter your e-mail"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                loginpassword = value;
              },
              decoration:
                  kInputdecoration.copyWith(hintText: "Enter your Password"),
            ),
            const SizedBox(
              height: 18.0,
            ),
            LogAndRegButton(
              label: "Login",
              color: Colors.lightBlueAccent,
              onpress: () async {
                final login = await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: loginemail, password: loginpassword);
                if (login.user != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an Account?",
                  style: TextStyle(color: Colors.black),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    );
                  },
                  child: const Text(
                    "SignUp",
                    style: TextStyle(color: Colors.lightBlueAccent),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
