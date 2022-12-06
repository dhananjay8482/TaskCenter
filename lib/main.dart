import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_center/pages/home.dart';
import 'package:task_center/pages/login.dart';
import 'package:task_center/pages/profile.dart';
import 'package:task_center/pages/leave_req_detail.dart';
import 'package:task_center/utils/routes.dart';
import 'package:task_center/widgets/themes.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => HomePage(),


        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.profileRoute: (context) => MyProfile(),
        MyRoutes.leaveReqRoute: (context) => LeaveReqDetail(),
      },
    );
  }
}

