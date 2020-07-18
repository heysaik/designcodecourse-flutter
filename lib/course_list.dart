import 'package:designcodecourse_flutter/components/app_drawer.dart';
import 'package:flutter/material.dart';
import 'items/course_row.dart';

class CourseList extends StatelessWidget {
  static const routeName = '/courses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Courses"),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return CourseRow();
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
