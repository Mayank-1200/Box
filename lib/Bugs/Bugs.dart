import 'package:flutter/material.dart';
import 'package:box/Bottom_Nav_Bar.dart';
import 'package:box/Bugs/bugDetails.dart';
import 'BugCard.dart';

class Bugs extends StatefulWidget {
  const Bugs({Key? key}) : super(key: key);

  @override
  State<Bugs> createState() => _BugsState();
}

class _BugsState extends State<Bugs> {
  final List<BugDetailsPage> bugs = [
    BugDetailsPage(
      bugTitle: "Error Message should be displayed if any field is blank in Change Password Field",
      status: 'Unconfirmed',
      severity: 'Minor',
      date: '21-12-2023',
      time: '04:19 PM',
      priority: 'high',
      reporterName: 'Ankita Patel',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Bugs"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavBar()),
            );
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: bugs.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => BottomSheet(
                          backgroundColor: Colors.white60,
                          onClosing: () {},
                          builder: (context) => BugDetailsPage(
                            bugTitle: bugs[index].bugTitle,
                            status: bugs[index].status,
                            severity: bugs[index].severity,
                            date: bugs[index].date,
                            time: bugs[index].time,
                            priority: bugs[index].priority,
                            reporterName: bugs[index].reporterName,
                          ),
                        ),
                      );
                    },
                    child: BugCard(
                      bugtitle: bugs[index].bugTitle,
                      status: bugs[index].status,
                      severity: bugs[index].severity,
                      date: bugs[index].date,
                      time: bugs[index].time,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
