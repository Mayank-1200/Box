import 'package:flutter/material.dart';

class BugDetailsPage extends StatefulWidget {
  final String bugTitle;
  final String status;
  final String severity;
  final String date;
  final String time;
  final String priority;
  final String reporterName;
  BugDetailsPage({super.key, required this.bugTitle, required this.status, required this.severity, required this.date, required this.time, required this.priority, required this.reporterName});

  @override
  State<BugDetailsPage> createState() => _BugDetailsPageState();
}

class _BugDetailsPageState extends State<BugDetailsPage> {
  var fontweight = FontWeight.w500;

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

  Color getPriorityColor(String priority) {
    switch (priority.toLowerCase()) {
      case "low":
        return Colors.blue;
      case "high":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Bug Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  child: Text(
                        "${widget.bugTitle}.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: fontweight,
                      letterSpacing: 0.4,
                    ),
                    ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Row(
            children: [
              Text(
                "Project Name: ",
                style: TextStyle(
                  fontWeight: fontweight,
                ),
              ),
              Text("Visa Tree"),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Row(
            children: [
              Text("Status: ",
                style: TextStyle(
                  fontWeight: fontweight,
                ),
              ),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Row(
            children: [
              Text(
                'Severity: ',
                style: TextStyle(
                  fontWeight: fontweight,
                ),
              ),
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Row(
            children: [
              Text(
                "Date: ",
                style: TextStyle(
                  fontWeight: fontweight,
                ),
              ),
              Text(widget.date),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Row(
            children: [
              Text(
                "Time: ",
                style: TextStyle(
                  fontWeight: fontweight,
                ),
              ),
              Text(widget.time),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
          Row(
            children: [
              Text(
                "Priority: ",
                style: TextStyle(
                  fontWeight: fontweight,
                ),
              ),
              Text(
                widget.priority,
                style: TextStyle(
                  color: getPriorityColor(widget.priority),
                  // fontFamily: GoogleFonts.caveatBrush().fontFamily,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Reported by ",
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
              Text(
                widget.reporterName,
                style: TextStyle(
                  color: Colors.black38,
                ),
              ),
            ],
          ),
          // Add more details as needed
        ],
      ),
    );
  }
}