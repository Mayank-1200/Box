import 'package:box/Tasks/Task_List.dart';
import 'package:box/Tasks/TopContainerPaint.dart';
import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String title;
  final IconData icon;

  TodoCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width / 2.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(icon),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade100,
        title: Text(
            "Tasks"
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.25,
                    height: 185,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 14,
                          left: 5,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(
                                builder: (context) => TaskList(),
                              ));
                            },
                            child: TodoCard(
                              title: "Total task",
                              icon: Icons.manage_history_rounded,
                            ),
                          ),
                        ),
                        CustomPaint(
                          size: Size(
                            140, // Adjust the width of the rectangle
                            (140 * 0.5555555555555552).toDouble(), // Adjust the height accordingly
                          ),
                          painter: TopContainerPaint(),
                        ),
                        Positioned(
                          top: 13,
                          left: 53,
                          right: 0,
                          child: Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.25,
                    height: 185,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 14,
                          left: 5,
                          right: 0,
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(
                                  builder: (context) => TaskList(),
                                ));
                              },
                              child: TodoCard(
                                title: "Task in Progress",
                                icon: Icons.feed_rounded,)
                          ),
                        ),
                        CustomPaint(
                          size: Size(
                            140, // Adjust the width of the rectangle
                            (140 * 0.5555555555555552).toDouble(), // Adjust the height accordingly
                          ),
                          painter: TopContainer2Paint(),
                        ),
                        Positioned(
                          top: 13,
                          left: 53,
                          right: 0,
                          child: Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.25,
                    height: 185,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 14,
                          left: 5,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(
                                builder: (context) => TaskList(),
                              ));
                            },
                            child: TodoCard(
                                title: "Completed Task",
                                icon: Icons.done_all_rounded,
                            ),
                          ),
                        ),
                        CustomPaint(
                          size: Size(
                            140, // Adjust the width of the rectangle
                            (140 * 0.5555555555555552).toDouble(), // Adjust the height accordingly
                          ),
                          painter: TopContainer3Paint(),
                        ),
                        Positioned(
                          top: 13,
                          left: 53,
                          right: 0,
                          child: Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.25,
                    height: 185,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 14,
                          left: 5,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(
                                builder: (context) => TaskList(),
                              ));
                            },
                            child: TodoCard(
                                title: "Due Task",
                                icon: Icons.content_paste_search_rounded,
                            ),
                          ),
                        ),
                        CustomPaint(
                          size: Size(
                            140, // Adjust the width of the rectangle
                            (140 * 0.5555555555555552).toDouble(), // Adjust the height accordingly
                          ),
                          painter: TopContainer4Paint(),
                        ),
                        Positioned(
                          top: 13,
                          left: 53,
                          right: 0,
                          child: Text(
                            "0",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

