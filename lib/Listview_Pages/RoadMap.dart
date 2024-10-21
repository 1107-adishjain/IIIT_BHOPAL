import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iiitbhopal/Classes/redirecting_url.dart';
import 'package:iiitbhopal/roadmap_pages/ai.dart';
import 'package:iiitbhopal/roadmap_pages/app.dart';
import 'package:iiitbhopal/roadmap_pages/web.dart';

class Roadmap extends StatefulWidget {
  static String idd = "RoadMaps";
  const Roadmap({super.key});

  @override
  State<Roadmap> createState() => _RoadmapState();
}

class _RoadmapState extends State<Roadmap> {
  List<Map<String, dynamic>> fields = [
    {"name": "Web-Development", "icon": FontAwesomeIcons.globe},
    {"name": "App-Development", "icon": Icons.mobile_friendly},
    {"name": "AI-ML", "icon": FontAwesomeIcons.robot},
    {"name": "DevOps", "icon": FontAwesomeIcons.server},
    {"name": "BlockChain", "icon": FontAwesomeIcons.link},
    {"name": "Cybersecurity", "icon": FontAwesomeIcons.shieldHalved},
    {"name": "Game-Development", "icon": FontAwesomeIcons.gamepad},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RoadMaps",
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        titleSpacing: 5.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: fields.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 9.0, horizontal: 14.0),
                    height: 68.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.lightBlueAccent.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: ListTile(
                        leading:
                            Icon(fields[index]["icon"], color: Colors.black),
                        title: Text(
                          fields[index]["name"],
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18.0),
                        ),
                        onTap: () {
                          switch (index) {
                            case 0:
                              Navigator.pushNamed(context, Web.id);
                              break;
                            case 1:
                              Navigator.pushNamed(context, App.id);
                              break;
                            case 2:
                              Navigator.pushNamed(context, AI.id);
                              break;
                            case 3:
                              UrlLauncher()
                                  .launchurl("https://roadmap.sh/devops");
                              break;
                            case 4:
                              UrlLauncher()
                                  .launchurl("https://roadmap.sh/blockchain");
                              break;
                            case 5:
                              UrlLauncher()
                                  .launchurl("https://roadmap.sh/cyber-security");
                              break;
                            case 6:
                              UrlLauncher()
                                  .launchurl("https://roadmap.sh/game-developer");
                              break;      
                            default:
                              break;
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
