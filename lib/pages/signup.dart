import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iiitbhopal/components/log_and_Reg_button.dart';
import 'package:iiitbhopal/constants.dart';
import 'package:iiitbhopal/pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late String email;
  final _auth = FirebaseAuth.instance;
  late String password;
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
                email = value;
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
                password = value;
              },
              decoration:
                  kInputdecoration.copyWith(hintText: "Enter your Password"),
            ),
            const SizedBox(
              height: 18.0,
            ),
            LogAndRegButton(
              label: "SingUp",
              color: Colors.blueAccent,
              onpress: () async {
                final userCredential =
                    await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                if (userCredential.user != null) {
                  // ignore: use_build_context_synchronously
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
