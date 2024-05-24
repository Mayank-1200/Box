import 'dart:io';
import 'dart:math';
import 'package:box/Leaves/Leave.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({super.key});

  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
  bool singleDay = false;
  bool multipleDay = false;
  bool hours = false;
  TextEditingController reasonController = TextEditingController();
  String selectLeave = 'Casual Leave';
  List<String> leaveTypes = ['Casual Leave', 'Sick Leave', 'Maternity Leave', 'Leave Without Pay'];
  String selectleavehours = '01';
  List<String> leavehours = ['01', '02', '03', '04', '05', '06', '07', '08'];
  DateTime _dateTime = DateTime.now();
  DateTime _dateTime2 = DateTime.now();
  DateTime _dateTime3 = DateTime.now();
  DateTime _dateTime4 = DateTime.now();
  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    ).then((value) => {
      setState(() {
        if (value != null) {
          _dateTime = DateTime(value.year, value.month, value.day);
        }
      }),
    });
  }//single Day
  void _showDatePicker2() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    ).then((value) => {
      setState(() {
        if (value != null) {
          _dateTime2 = DateTime(value.year, value.month, value.day);
        }
      }),
    });
  }//multiple day starting date
  void _showDatePicker3() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),).then((value) =>
    {
      setState(() {
        if (value != null) {
          _dateTime3 = DateTime(value.year, value.month, value.day);
        }
      }),
    });
  }//multiple day ending date
  void _showDatePicker4() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    ).then((value) => {
      setState(() {
        if (value != null) {
          _dateTime4 = DateTime(value.year, value.month, value.day);
        }
      }),
    });
  }//hours
  FilePickerResult? result;
  var filePath = '';
  Future<void> requestPermission() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      var result = await Permission.storage.request();
      if (result.isDenied) {
        // Handle permission denied
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text("Apply Leave"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LeavePage()),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child: Text(
                      "Leave Category",
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
                        value: selectLeave,
                        isExpanded: true,
                        onChanged: (String? value) {
                          setState(() {
                            selectLeave = value ?? " ";
                          });
                        },
                        items: leaveTypes.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: singleDay,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        singleDay = value ?? false;
                        if (singleDay) {
                          multipleDay = false;
                          hours = false;
                        }
                      });
                    },
                  ),
                  Text("Single Day"),
                  Checkbox(
                    value: multipleDay,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        multipleDay = value ?? false;
                        if (multipleDay) {
                          singleDay = false;
                          hours = false;
                        }
                      });
                    },
                  ),
                  Text("Multiple Day"),
                  Checkbox(
                    value: hours,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    activeColor: Colors.black,
                    onChanged: (value) {
                      setState(() {
                        hours = value ?? false;
                        if (hours) {
                          singleDay = false;
                          multipleDay = false;
                        }
                      });
                    },
                  ),
                  Text("Hours"),
                ],
              ),
              if (singleDay)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Text(
                                "Starting Date",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.37,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MaterialButton(
                              onPressed: _showDatePicker,
                              child: Text(
                                "${_dateTime.toLocal().day}/${_dateTime.toLocal().month}/${_dateTime.toLocal().year}",
                                style: TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down_sharp),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (multipleDay)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text(
                            "Starting Date",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.21,
                          ),
                          Text(
                            "Ending Date",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.37,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  onPressed: _showDatePicker2,
                                  child: Text(
                                    "${_dateTime2.toLocal().day}/${_dateTime2.toLocal().month}/${_dateTime2.toLocal().year}",
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down_sharp),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.37,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  onPressed: _showDatePicker3,
                                  child: Text(
                                    "${_dateTime3.toLocal().day}/${_dateTime3.toLocal().month}/${_dateTime3.toLocal().year}",
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down_sharp),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if (hours)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text(
                            "Starting Date",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.26,
                          ),
                          Text(
                            "Hours",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.37,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                  onPressed: _showDatePicker4,
                                  child: Text(
                                    "${_dateTime4.toLocal().day}/${_dateTime4.toLocal().month}/${_dateTime4.toLocal().year}",
                                    style: TextStyle(
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                Icon(Icons.arrow_drop_down_sharp),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.21,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectleavehours,
                                isExpanded: true,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectleavehours = value ?? " ";
                                  });
                                },
                                items: leavehours.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              SizedBox(
                height: 15,
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
                            controller: reasonController,
                            maxLines: null,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Reason...',
                              hintStyle: TextStyle(color: Colors.black26),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),

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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LeavePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // FloatingActionButton(
              //   onPressed: () async{
              //     await requestPermission();
              //     result = await FilePicker.platform.pickFiles(type: FileType.custom, allowedExtensions: ['pdf', 'jpg']);
              //     if(result == null) {
              //       return null;
              //     }
              //     else {
              //       result?.files?.forEach((element) {
              //         filePath = element.path!;
              //         setState(() {});
              //       });
              //
              //       print('FilePath-->$filePath');
              //     }
              //   },
              //   child: Icon(Icons.upload),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
