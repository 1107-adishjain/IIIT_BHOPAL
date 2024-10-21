import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:iiitbhopal/components/Announcement.dart';
import 'package:iiitbhopal/components/Listviews.dart';
import 'package:iiitbhopal/components/profile_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0x255e1f5fe),
        appBar: AppBar(
          backgroundColor: const Color(0x255F5FCFF),
          title: const Text(
            "IIIT Bhopal",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32.0),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfileUser()));
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage(
                  "Images/Indian Institute of Information Technology Bhopal.png"), // Profile picture
              radius: 40.0,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                size: 32.0,
              ),
              onPressed: () {
                // Action when notification icon is tapped
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TypewriterAnimatedText("Hello, Adish Jain",
                        speed: const Duration(milliseconds: 150),
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 32.0))
                  ],
                ),
              ),
            ),
            const Listviews(),
            Container(
              padding:
                  const EdgeInsets.only(top: 12.0, left: 16.0, right: 16.0),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Featured",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w500))),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 160.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: const Color(0xFF81D4FA).withOpacity(0.3),
                    ),
                    padding: const EdgeInsets.only(top: 8.0, left: 9.0),
                    child: const Center(
                      child: Text(
                        "Attendance",
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                      height: 160.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: const Color(0xFF81D4FA).withOpacity(0.3),
                      ),
                      child: const Announcement()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
