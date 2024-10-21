import 'package:flutter/material.dart';
import 'package:iiitbhopal/Listview_Pages/Academics.dart';
import 'package:iiitbhopal/Listview_Pages/Clubs.dart';
import 'package:iiitbhopal/Listview_Pages/Coding.dart';
import 'package:iiitbhopal/Listview_Pages/RoadMap.dart';

class Listviews extends StatefulWidget {
  const Listviews({super.key});

  @override
  State<Listviews> createState() => _ListviewsState();
}

class _ListviewsState extends State<Listviews> {
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 18.0),
      height: 84.0,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final categories = [
            "All",
            "Clubs",
            "Academics",
            "Coding",
            "RoadMaps"
          ];
          bool isSelected = _selectedindex == index;
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 7.0, vertical: 10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isSelected ? Colors.lightBlueAccent : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  _selectedindex = index;
                });
                switch (index) {
                  case 1:
                    Navigator.pushNamed(context, Clubs.id);
                    break;
                  case 2:
                    Navigator.pushNamed(context, Academics.id);
                    break;
                  case 3:
                    Navigator.pushNamed(context, Coding.id);
                    break;
                  case 4:
                    Navigator.pushNamed(context, Roadmap.idd);
                    break;
                  default:
                    break;
                }
              },
              child: Text(
                categories[index],
                style: const TextStyle(color: Colors.black),
              ),
            ),
          );
        },
      ),
    );
  }
}
