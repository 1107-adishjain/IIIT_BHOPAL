import 'package:flutter/material.dart';
import 'package:iiitbhopal/Classes/redirecting_url.dart';

class AI extends StatefulWidget {
  static String id = "Ai";
  const AI({super.key});

  @override
  State<AI> createState() => _AIState();
}

class _AIState extends State<AI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Box(label: "AI and Data Scientist", onpress: () async {
            UrlLauncher().launchurl("https://roadmap.sh/ai-data-scientist");
          }),
          Box(label: "MLOps", onpress: () async {
            UrlLauncher().launchurl("https://roadmap.sh/mlops");
          }),
          Box(label: "Data-Analyst", onpress: () async {
            UrlLauncher().launchurl("https://roadmap.sh/data-analyst");
          }),
          Box(label: "Prompt-Engineering", onpress: () async {
            UrlLauncher().launchurl("https://roadmap.sh/prompt-engineering");
          }),
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
