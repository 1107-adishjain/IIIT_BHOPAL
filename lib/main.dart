import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iiitbhopal/Listview_Pages/Academics.dart';
import 'package:iiitbhopal/Listview_Pages/Clubs.dart';
import 'package:iiitbhopal/Listview_Pages/Coding.dart';
import 'package:iiitbhopal/Listview_Pages/RoadMap.dart';
import 'package:iiitbhopal/firebase_options.dart';
import 'package:iiitbhopal/pages/home_page.dart';
import 'package:iiitbhopal/pages/welcome_page.dart';
import 'package:iiitbhopal/roadmap_pages/ai.dart';
import 'package:iiitbhopal/roadmap_pages/app.dart';
import 'package:iiitbhopal/roadmap_pages/web.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print("firebase intialized");
  runApp(const EduApp());
}

class EduApp extends StatelessWidget {
  const EduApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
      routes: {
        Roadmap.idd:(context)=>const Roadmap(),
        Clubs.id:(context)=>const Clubs(),
        Academics.id:(context)=>const Academics(),
        Coding.id:(context)=>const Coding(),
        Web.id:(context)=>const Web(),
        App.id:(context)=>const App(),
        AI.id:(context)=>const AI(),
      },
    );
  }
}


