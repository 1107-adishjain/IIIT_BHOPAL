import 'package:flutter/material.dart';
import 'package:iiitbhopal/Classes/redirecting_url.dart';
import 'package:url_launcher/url_launcher.dart';

class Web extends StatefulWidget {
  static String id = "Web";
  const Web({super.key});

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  // Function to open the URL
  // Future<void> _launchUrl(String url) async {
  //   Uri uri = Uri.parse(url);
  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(uri, mode: LaunchMode.inAppWebView); // Opens within the app
  //   } else {
  //     // ignore: use_build_context_synchronously
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text('Could not launch the URL'),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.lightBlueAccent.withOpacity(0.6),
              ),
              child: RawMaterialButton(
                onPressed: () async{
                  await UrlLauncher().launchurl("https://roadmap.sh/frontend");
                },
                child: const Center(
                  child: Text(
                    "FrontEnd",
                    style: TextStyle(
                        fontSize: 32.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 16.0, vertical: 10.0), // Adjusted margins
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Colors.lightBlueAccent.withOpacity(0.6),
              ),
              child: RawMaterialButton(
                onPressed: () async{
                  await UrlLauncher().launchurl("https://roadmap.sh/backend");
                },
                child: const Center(
                  child: Text(
                    "BackEnd",
                    style: TextStyle(
                        fontSize: 32.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
