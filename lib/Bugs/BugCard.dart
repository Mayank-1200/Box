import 'package:flutter/material.dart';

class BugCard extends StatefulWidget {
  final String bugtitle;
  final String status;
  final String severity;
  final String date;
  final String time;
  const BugCard({super.key, required this.bugtitle, required this.status, required this.severity, required this.date, required this.time});

  @override
  State<BugCard> createState() => _BugCardState();
}

class _BugCardState extends State<BugCard> {
  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case "confirmed":
        return Colors.green;
      case "unconfirmed":
        return Colors.orange.shade800;
      default:
        return Colors.grey;
    }
  }
  Color getSeverityColor(String severity) {
    switch (severity.toLowerCase()) {
      case "minor":
        return Colors.blue;
      case "major":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
  var greycolor = Colors.grey.shade900;

  @override
  Widget build(BuildContext context) {
    String truncatedTitle = widget.bugtitle.length > 30 ? widget.bugtitle.substring(0, 30) : widget.bugtitle;

    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.53,
            ),
            Text(
              widget.date,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Text(
              widget.time,
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Card(
          elevation: 1,
          color: Colors.white70,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              children: [
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text('Bug Title: '),
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "$truncatedTitle...",
                            style: TextStyle(
                              color: greycolor,
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                            maxLines: 1,
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
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text('Severity: '),
                    Text(
                      widget.severity,
                      style: TextStyle(
                        color: getSeverityColor(widget.severity),
                        // fontFamily: GoogleFonts.caveatBrush().fontFamily,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
