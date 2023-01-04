import 'package:flutter/material.dart';
import 'package:jiosavan_clone/color/colors.dart';
import 'package:jiosavan_clone/page/auth_page/welcom_page.dart';
import 'package:jiosavan_clone/page/nav_bar/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColor.mainColor,
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
