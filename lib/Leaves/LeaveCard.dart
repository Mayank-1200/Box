import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class leavecard extends StatefulWidget {

  final String category;
  final String Date;
  final String days;
  final String status;

  leavecard({
    required this.category,
    required this.Date,
    required this.status,
    required this.days,
});

  @override
  State<leavecard> createState() => _leavecardState();
}

class _leavecardState extends State<leavecard> {
  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case "approved":
        return Colors.green;
      case "pending":
        return Colors.blue;
      case "cancelled":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  var blackcolor = Colors.black;
  var greycolor = Colors.grey.shade900;
  var whitecolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white70,
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        widget.category,
                        style: TextStyle(
                          color: greycolor,
                          fontWeight: FontWeight.w900,
                          // fontFamily: GoogleFonts.anton().fontFamily,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.days,
                    style: TextStyle(
                      color: greycolor,
                      // fontFamily: GoogleFonts.dmSerifDisplay().fontFamily,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: whitecolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      widget.Date,
                      style: TextStyle(
                        color: greycolor,
                        // fontFamily: GoogleFonts.dancingScript().fontFamily,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text('Status: '),
                Text(
                  widget.status,
                  style: TextStyle(
                    color: getStatusColor(widget.status),
                    // fontFamily: GoogleFonts.caveatBrush().fontFamily,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
