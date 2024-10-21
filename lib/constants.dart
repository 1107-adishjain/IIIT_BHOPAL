import 'package:flutter/material.dart';

const kbuttonradius = BorderRadius.only(
  topLeft: Radius.circular(12.0),
  topRight: Radius.circular(12.0),
  bottomLeft: Radius.circular(12.0),
  bottomRight: Radius.circular(12.0),
);

const kInputdecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
  hintText: "Enter your password",
  hintStyle: TextStyle(color: Colors.black54, fontSize: 18.0),
  border: OutlineInputBorder(
    borderRadius: kbuttonradius,
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: kbuttonradius,
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: kbuttonradius,
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

