import 'package:flutter/material.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Adish Jain"),
            accountEmail: Text("adish.jain@example.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                  "Images/Indian Institute of Information Technology Bhopal.png"),
            ),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Personal Information"),
            onTap: () {
              // Navigate to personal information page
            },
          ),
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text("Upcoming Events"),
            onTap: () {
              // Navigate to upcoming events page
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text("Placements"),
            onTap: () {
              // Navigate to placements page
            },
          ),
          ListTile(
            leading: const Icon(Icons.location_city),
            title: const Text("Companies Visited"),
            onTap: () {
              // Navigate to companies visited page
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("About"),
            onTap: () {
              // Navigate to about page
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text("Contact Us"),
            onTap: () {
              // Navigate to contact us page
            },
          ),
        ],
      ),
    );
  }
}
