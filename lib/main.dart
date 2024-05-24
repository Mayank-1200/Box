import 'package:box/Bottom_Nav_Bar.dart';
import 'package:box/Bugs/Bugs.dart';
import 'package:box/Leaves/ApplyLeave.dart';
import 'package:box/Leaves/Leave.dart';
import 'package:box/Login_Page_2.dart';
import 'package:box/Splash.dart';
import 'package:box/Tasks/Create_Task.dart';
import 'package:box/Tasks/Task_List.dart';
import 'package:box/user_details.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

