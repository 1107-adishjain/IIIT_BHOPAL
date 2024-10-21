import 'dart:async';

import 'package:flutter/material.dart';

class Announcement extends StatefulWidget {
  const Announcement({super.key});

  @override
  State<Announcement> createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  late PageController _pageController;
  int _currentPage = 0;
  Timer? _timer;

  final List<String> announcements = [
    "Welcome to IIIT Bhopal!",
    "Anti-Ragging Week is from August 12-18.",
    "New Clubs Registration starts next week.",
    "Stay tuned for upcoming events!",
    "Exams begin from September 1st."
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);

    // Start the timer for automatic page switching
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < announcements.length-1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.decelerate,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              announcements[index],
              style: const TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
        );
      },
    );
  }
}
