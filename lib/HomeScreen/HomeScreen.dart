import 'package:box/Bugs/Bugs.dart';
import 'package:box/HomeScreen/Dashboard.dart';
import 'package:box/HomeScreen/Side_bar.dart';
import 'package:box/Leaves/Leave.dart';
import 'package:box/Tasks/To_Do.dart';
import 'package:box/user_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  DateTime _selectedDate = DateTime.now();
  EventList<Event> _markedDateMap = EventList<Event>(events: {});
  Color get whiteColor => Colors.white;
  Color get blackColor => Colors.black;
  Color get boxColor => Colors.grey.shade700; // Color(0xff242424)
  Color get iconColor => Colors.white;
  BorderRadius get containerBorder => BorderRadius.circular(13);
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: whiteColor,
                  child: Icon(
                    Icons.notifications_none,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetails(),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: whiteColor,
                    child: Icon(
                      Icons.person,
                      color: blackColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
        iconTheme: IconThemeData(color: blackColor),
      ),
      drawer: CustomDrawer(
        onLeaveTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LeavePage(),
              ));
        },
        onTeamsTap: () {
          Navigator.pop(context);
        },
        onTaskTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Todo(),
              ));
        },
        onLanguageChangeTap: () {
          Navigator.pop(context);
        },
        onSupportTap: () {
          Navigator.pop(context);
        },
        onPrivacyTap: () {
          Navigator.pop(context);
        },
        onTnCTap: () {
          Navigator.pop(context);
        },
      ),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hello User",
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Wrap(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Placeholder(),
                                          ));
                                    },
                                    child: DashCard(text: "Clients", icon: Icons.person),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Placeholder(),
                                          ));
                                    },
                                    child: DashCard(text: 'Employees', icon: Icons.group_outlined,)
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Placeholder(),
                                          ));
                                    },
                                    child: DashCard(text: "Projects", icon: Icons.list_alt_rounded)
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Todo(),
                                          ));
                                    },
                                    child: DashCard(text: "Tasks", icon: Icons.task)
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LeavePage(),
                                          ));
                                    },
                                    child: DashCard(text: "Leave", icon: Icons.edit_calendar_sharp,)
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Placeholder(),
                                          ));
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.06,
                                      width: MediaQuery.of(context).size.width *
                                          0.40,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 42,
                                            width: 43,
                                            decoration: BoxDecoration(
                                              color: boxColor,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(
                                              Icons.co_present_rounded,
                                              color: iconColor,
                                            ),
                                          ),
                                          Text(
                                            "Attendance",
                                            style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Bugs(),
                                          ));
                                    },
                                    child: DashCard(text: "Bugs", icon: Icons.bug_report_rounded,)
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Placeholder(),
                                          ));
                                    },
                                    child: DashCard(text: "Visit", icon: Icons.apartment_rounded,)
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.41,
                          width: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.grey.shade200,
                          ),
                          child: CalendarCarousel(
                            onDayPressed: (date, events) {
                              setState(() {
                                _selectedDate = date;
                              });
                            },
                            weekendTextStyle:
                                TextStyle(color: Colors.blue.shade300),
                            weekdayTextStyle:
                                TextStyle(color: Colors.red.shade200),
                            thisMonthDayBorderColor: Colors.grey,
                            selectedDateTime: _selectedDate,
                            markedDatesMap: _markedDateMap,
                            daysHaveCircularBorder: null,
                            headerTextStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ), //Calendar
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
