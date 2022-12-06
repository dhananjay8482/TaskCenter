import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_center/pages/home.dart';
import 'package:task_center/pages/profile.dart';

import '../pages/login.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final image_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ_I2fxYhYCW7_9bIwitAjsh3JZJ0DiB7p3g&usqp=CAU";
    return Drawer(
      child: Container(
        // color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero ,
              child: UserAccountsDrawerHeader(
                accountName: Text("User Name"),
                accountEmail: Text("abc@xyz.com"),
                // currentAccountPicture: Image.network(image_url),
                currentAccountPicture: CircleAvatar(
                  radius: 200.0,
                  backgroundColor: const Color(0xFF778899),
                  child: new Image.asset(
                    'images/docker_profile.png',
                  ), //For Image Asset
                ),
              ),
            ),

            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home", textScaleFactor: 1.2 ),
              onTap: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                )
              },
            ),

            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile", textScaleFactor: 1.2 ),
              onTap: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                )
              },
            ),

            ListTile(
              leading: Icon(CupertinoIcons.app_fill),
              title: Text("Leave Requests", textScaleFactor: 1.2 ),
              onTap: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                )
              },
            ),

            ListTile(
              leading: Icon(CupertinoIcons.calendar),
              title: Text("Time Sheet Requests", textScaleFactor: 1.2 ),
              onTap: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                )
              },
            ),

            ListTile(
              leading: Icon(CupertinoIcons.envelope_fill),
              title: Text("Work Order Requests", textScaleFactor: 1.2 ),
              onTap: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                )
              },
            ),

            ListTile(
              leading: Icon(CupertinoIcons.info_circle_fill),
              title: Text("Read Me", textScaleFactor: 1.2 ),
              onTap: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                )
              },
            ),

            ListTile(
              leading: Icon(CupertinoIcons.padlock_solid),
              title: Text("Logout", textScaleFactor: 1.2 ),
              onTap: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                )
              },
            ),
          ],
        ),
      ),

    );
  }
}