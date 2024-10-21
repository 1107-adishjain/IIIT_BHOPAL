import 'package:flutter/material.dart';
import 'package:iiitbhopal/constants.dart';

// ignore: must_be_immutable
class LogAndRegButton extends StatefulWidget {
  late String label;
  late Color color;
  late VoidCallback onpress;
  LogAndRegButton({super.key,required this.label,required this.color,required this.onpress});

  @override
  State<LogAndRegButton> createState() => _LogAndRegButtonState();
}

class _LogAndRegButtonState extends State<LogAndRegButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: ClipRRect(
        borderRadius: kbuttonradius,
        child: MaterialButton(
          minWidth: 200,
          color:widget.color,
          height: 60.0,
          onPressed: widget.onpress,
          child:Text(
            widget.label,
            style:const  TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
