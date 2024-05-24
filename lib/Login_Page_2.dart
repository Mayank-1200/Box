import 'package:box/Bottom_Nav_Bar.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {

  bool isVisible = true;
  bool checkedvalue = false;
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/bg_login.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.66,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Color.fromRGBO(49, 39, 79, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(32)),
                                child: Container(
                                  color: Color(0xfff3f2f2),
                                  child: TextFormField(
                                    controller: numberController,
                                    cursorColor: Colors.black26,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32),
                                        borderSide: BorderSide.none,
                                      ),
                                      hintText: 'Enter Email ID',
                                      hintStyle: TextStyle(color: Colors.black26),
                                    ),
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter Email";
                                      }
                                      bool isEmailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);

                                      if (!isEmailValid) {
                                        return 'Enter valid email';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(32)),
                                child: Container(
                                  color: Color(0xfff3f2f2),
                                  child: TextFormField(
                                    obscureText: isVisible,
                                    controller: passwordController,
                                    cursorColor: Colors.black26,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          isVisible ? Icons.visibility : Icons.visibility_off_sharp,
                                          color: Colors.black26,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            isVisible = !isVisible;
                                          });
                                        },
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(32),
                                        borderSide: BorderSide.none,
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(color: Colors.black26),
                                    ),
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please enter Password";
                                      }
                                      if (value.length < 8) {
                                        return "Enter password more than 8 letters";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    value: checkedvalue,
                                    activeColor: Colors.black,
                                    onChanged: (newvalue) {
                                      setState(() {
                                        checkedvalue = newvalue!;
                                      });
                                    },
                                  ),
                                  Text(
                                    'I Agree with Terms of Service and Privacy Policy',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.black), // Set the background color
                                  ),
                                  onPressed: checkedvalue ? () {
                                    if (_formKey.currentState?.validate() == true) {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.SUCCES,
                                        animType: AnimType.SCALE,
                                        btnOkColor: Colors.black,
                                        title: 'Login Successful',
                                        btnOkOnPress: () {
                                          // Navigate to the next screen
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => NavBar(),
                                            ),
                                          );
                                        },
                                      ).show();
                                    }
                                  } : null,
                                  child: Text(
                                    'Log in',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  launch("https://lttrbxtech.com/");
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Text("For More Details visit our"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Website",
                                          style: TextStyle(
                                            color: Colors.yellow.shade800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Copyright @ 2023 LTTRBX",
                                    style: TextStyle(
                                      color: Colors.black26,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
