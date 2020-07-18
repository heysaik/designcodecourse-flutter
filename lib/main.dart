import 'package:designcodecourse_flutter/constants.dart';
import 'package:designcodecourse_flutter/routes/routes.dart';
import 'course_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body;
    return MaterialApp(
      theme: kLightTheme,
      darkTheme: kDarkTheme,
      title: 'Learn',
      home: CourseList(),
      routes: {
        Routes.courses: (context) => CourseList(),
      },
    );
  }
}
