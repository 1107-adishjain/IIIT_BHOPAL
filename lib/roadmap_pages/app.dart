import 'package:flutter/material.dart';
import 'package:iiitbhopal/Classes/redirecting_url.dart';

class App extends StatefulWidget {
  static String id = "App";
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Box(
            label: "Flutter",
            onpress: () async {
              await UrlLauncher().launchurl("https://roadmap.sh/flutter");
            },
          ),
          Box(
            label: "React-Native",
            onpress: () async {
              await UrlLauncher().launchurl("https://roadmap.sh/react-native");
            },
          ),
          Box(
            label: "Andriod",
            onpress: () async {
              await UrlLauncher().launchurl("https://roadmap.sh/android");
            },
          ),
          Box(
            label: "IOS-Developer",
            onpress: () async {
              await UrlLauncher().launchurl("https://roadmap.sh/ios");
            },
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Box extends StatefulWidget {
  late String label;
  VoidCallback onpress;
  Box({super.key, required this.label, required this.onpress});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 10.0), // Adjusted margins
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.lightBlueAccent.withOpacity(0.6),
        ),
        child: RawMaterialButton(
          onPressed: widget.onpress,
          child: Center(
            child: Text(
              widget.label,
              style: const TextStyle(
                  fontSize: 32.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
