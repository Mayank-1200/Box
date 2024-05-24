import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  Color get backgroundColor => Colors.grey.shade300;
  Color get blackColor => Colors.black87;
  Color get iconColor => Colors.black87;

  final VoidCallback onLeaveTap;
  final VoidCallback onTeamsTap;
  final VoidCallback onTaskTap;
  final VoidCallback onLanguageChangeTap;
  final VoidCallback onSupportTap;
  final VoidCallback onPrivacyTap;
  final VoidCallback onTnCTap;

  CustomDrawer({
    Key? key,
    required this.onLeaveTap,
    required this.onTeamsTap,
    required this.onTaskTap,
    required this.onLanguageChangeTap,
    required this.onSupportTap,
    required this.onPrivacyTap,
    required this.onTnCTap,
  }) : super(key: key);

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double drawercontainerHeight = MediaQuery.of(context).size.height;
    double drawerwidth = MediaQuery.of(context).size.width;

    return Drawer(
      width: drawerwidth * 0.75,
      backgroundColor: backgroundColor,
      child: ListView(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Container(
              height: drawercontainerHeight * 0.2,
              color: backgroundColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/John_Doe.jpeg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'John Doe',
                        ),
                        Text(
                            'JohnDoe@gmail.com'
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ), //container for user account
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Account",
              style: TextStyle(
                  color: iconColor,
              ),
            ),
          ),//account text
          Divider(
            color: iconColor,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: Icon(Icons.edit_calendar_sharp, color: iconColor),
            title: Text(
              'Leave',
              style: TextStyle(color: iconColor),
            ),
            onTap: onLeaveTap,
          ),//Leave Tile
          ListTile(
            leading: Icon(Icons.group_outlined, color: iconColor),
            title: Text(
              'Teams',
              style: TextStyle(color: iconColor),
            ),
            onTap: onTeamsTap,
          ),//Teams Tile
          ListTile(
            leading: Icon(Icons.task, color: iconColor),
            title: Text(
              'Tasks',
              style: TextStyle(color: iconColor),
            ),
            onTap: onTaskTap,
          ),//Tasks Tile
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Setting",
              style: TextStyle(
                color: iconColor,
              ),
            ),
          ),//setting text
          Divider(
            color: iconColor,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: Icon(Icons.g_translate_rounded, color: iconColor),
            title: Text(
              'Language Change',
              style: TextStyle(color: iconColor),
            ),
            onTap: onLanguageChangeTap,
          ),//Language change Tile
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Support",
              style: TextStyle(
                color: iconColor,
              ),
            ),
          ),//Support Text
          Divider(
            color: iconColor,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: Icon(Icons.headset_mic_rounded, color: iconColor),
            title: Text(
              'Support Policy',
              style: TextStyle(color: iconColor),
            ),
            onTap: onSupportTap,
          ),//Support Policy Tile
          ListTile(
            leading: Icon(Icons.security_update_good_rounded, color: iconColor),
            title: Text(
              'Privacy Policy',
              style: TextStyle(color: iconColor),
            ),
            onTap: onPrivacyTap,
          ),//Privacy Policy Tile
          ListTile(
            leading: Icon(Icons.document_scanner_rounded, color: iconColor),
            title: Text(
              'Terms & Conditions',
              style: TextStyle(color: iconColor),
            ),
            onTap: onTnCTap,
          ),//Terms and conditions Tile
        ],
      ),
    );
  }
}
