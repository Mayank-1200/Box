import 'package:flutter/material.dart';

class DashCard extends StatefulWidget {
  final String text;
  final IconData icon;
  DashCard({required this.text, required this.icon});

  @override
  State<DashCard> createState() => _DashCardState();
}

class _DashCardState extends State<DashCard> {
  Color get whiteColor => Colors.white;
  Color get blackColor => Colors.black;
  Color get boxColor => Colors.grey.shade700; // Color(0xff242424)
  Color get iconColor => Colors.white;
  BorderRadius get containerBorder => BorderRadius.circular(13);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.40,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: containerBorder,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 30,
            spreadRadius: -17,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 42,
            width: 43,
            decoration: BoxDecoration(
              color: boxColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              widget.icon,
              color: iconColor,
            ),
          ),
          Text(
            widget.text,
            style: TextStyle(
              color: whiteColor,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
