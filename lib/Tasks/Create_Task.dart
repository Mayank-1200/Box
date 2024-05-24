import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:box/Tasks/Task_List.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({Key? key}) : super(key: key);

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {

  DateTime dateTime = DateTime.now();
  DateTime dateTime2 = DateTime.now();
  double slidervalue = 0;
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool Everyone = false;
  bool Customize = false;
  List<Map> staffNames = [
    {"name" : "Meet", "isChecked" : false},
    {"name" : "Pratik", "isChecked" : false},
    {"name" : "Mayank", "isChecked" : false},
  ];
  TextEditingController taskName = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController hourrate = TextEditingController();
  String selectedProject = 'Graphics Mockups';
  List<String> projectNames = ['Graphics Mockups', 'Domain server setup'];
  String Related = 'None';
  List<String> RelatedNames = ['None', 'Projects', 'Opportunities', 'leads', 'bugs', 'Goal Expenses', 'Tasks', 'Expenses'];
  String Status = 'Not Started';
  List<String> differentStatus = ['Not Started', 'In Progress', 'Completed', 'Deffered', 'Waiting For Someone',];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: const Text("Create Task"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TaskList()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                          "Select Project",
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedProject,
                          isExpanded: true,
                          onChanged: (String? value) {
                            setState(() {
                              selectedProject = value ?? " ";
                            });
                          },
                          items: projectNames.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),//Select Project
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                        "Related To",
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Related,
                          isExpanded: true,
                          onChanged: (String? value) {
                            setState(() {
                              Related = value ?? " ";
                            });
                          },
                          items: RelatedNames.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),//related to
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                        "Task Status",
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: Status,
                          isExpanded: true,
                          onChanged: (String? value) {
                            setState(() {
                              Status = value ?? " ";
                            });
                          },
                          items: differentStatus.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),//Status
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.067,
                        width: MediaQuery.of(context).size.width * 0.9,
                        color: Colors.white,
                        child: TextFormField(
                          controller: taskName,
                          cursorColor: Colors.black45,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Task Name',
                            hintStyle: TextStyle(color: Colors.black26),
                          ),
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              print('title should not be empty');
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),//title
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.9,
                        color: Colors.white,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding:EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                            child: TextField(
                              cursorColor: Colors.black45,
                              controller: descriptionController,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Task Description..',
                                hintStyle: TextStyle(color: Colors.black26),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),//description
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              "Start Time",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.25,
                          ),
                          Text(
                            "End Time",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            _showDatePicker();
                          },
                          icon: Icon(
                            Icons.calendar_month,
                          ),
                        ),
                        CupertinoButton(
                          child: Text(
                              '${dateTime.day}-${dateTime.month}-${dateTime.year}',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            _showDatePicker();
                          },
                        ),
                        IconButton(
                          onPressed: () {
                            _showDatePicker2();
                          },
                          icon: Icon(
                            Icons.calendar_month,
                          ),
                        ),
                        CupertinoButton(
                          child: Text(
                            '${dateTime2.day}-${dateTime2.month}-${dateTime2.year}',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            _showDatePicker2();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.067,
                          width: MediaQuery.of(context).size.width * 0.9,
                          child: Slider(
                            value: slidervalue,
                            max: 100,
                            activeColor: Colors.black54,
                            thumbColor: Colors.grey,
                            inactiveColor: Colors.white,
                            label: slidervalue.toString(),
                            onChanged: (value) {
                              setState(() {
                                if(!(checkbox1 || checkbox2)) {
                                  slidervalue = value;
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Progress ' + slidervalue.toString(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),//slider
                Row(
                  children: [
                    Checkbox(
                      value: checkbox1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          checkbox1 = value ?? false;
                          if(checkbox1){
                            checkbox2 = false;
                            slidervalue = 0;
                          }
                        });
                      },
                    ),
                    Text("Through tasks hours"),
                    Checkbox(
                      value: checkbox2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          checkbox2 = value ?? false;
                          if(checkbox2){
                            checkbox1 = false;
                            slidervalue = 0;
                          }
                        });
                      },
                    ),
                    Text("Through sub tasks"),
                  ],
                ), //checkboxes
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.067,
                        width: MediaQuery.of(context).size.width * 0.9,
                        color: Colors.white,
                        child: TextFormField(
                          controller: hourrate,
                          cursorColor: Colors.black45,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Hourly Rate',
                            hintStyle: TextStyle(color: Colors.black26),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Assigned to",
                        style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: Everyone,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          Everyone = value ?? false;
                          if(Everyone){
                            Customize = false;
                          }
                        });
                      },
                    ),
                    Text("Everyone"),
                    Checkbox(
                      value: Customize,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          Customize = value ?? false;
                          if(Customize){
                            Everyone = false;
                            _showCustomizeNamesDialog();
                          }
                        });
                      },
                    ),
                    Text("Customize"),
                  ],
                ), //checkboxes
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.black), // Set the background color
                        ),
                        onPressed: () {
                          if (_formKey.currentState?.validate() == false) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TaskList(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),//Save button
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDatePicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: CupertinoDatePicker(
          backgroundColor: Colors.white,
          initialDateTime: dateTime,
          use24hFormat: true,
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (DateTime newTime) {
            setState(() {
              dateTime = newTime;
            });
          },
        ),
      ),
    );
  }
  void _showDatePicker2() {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: CupertinoDatePicker(
          backgroundColor: Colors.white,
          initialDateTime: dateTime2,
          use24hFormat: true,
          mode: CupertinoDatePickerMode.date,
          onDateTimeChanged: (DateTime newTime) {
            setState(() {
              dateTime2 = newTime;
            });
          },
        ),
      ),
    );
  }
  void _showCustomizeNamesDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Names"),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                width: double.maxFinite,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: staffNames.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CheckboxListTile(
                      activeColor: Colors.black,
                      title: Text(staffNames[index]['name']),
                      value: staffNames[index]['isChecked'],
                      onChanged: (val) {
                        setState(() {
                          staffNames[index]['isChecked'] = val;
                        });
                      },
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
