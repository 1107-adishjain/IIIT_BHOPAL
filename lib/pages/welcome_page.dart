import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:iiitbhopal/components/log_and_Reg_button.dart';
import 'package:iiitbhopal/pages/login.dart';
import 'package:iiitbhopal/pages/signup.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation =
        ColorTween(begin: Colors.black, end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Hero(
                    tag: "Animation",
                    child: Image.asset(
                      "Images/Indian Institute of Information Technology Bhopal.png",
                      height: 120.0,
                      width: 140.0,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  AnimatedTextKit(
                    totalRepeatCount: 2,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        "IIIT Bhopal",
                        textStyle: const TextStyle(
                            fontSize: 44.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600),
                        speed: const Duration(milliseconds: 200),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 45.0,
              ),
              LogAndRegButton(
                label: "Login",
                color: Colors.lightBlueAccent,
                onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
              ),
              LogAndRegButton(
                label: "SignUp",
                color: Colors.blueAccent,
                onpress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
