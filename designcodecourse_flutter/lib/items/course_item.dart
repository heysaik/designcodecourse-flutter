import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        color: Color(0xFF007AFF),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.33),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            FittedBox(
              fit: BoxFit.fill,
              child: SvgPicture.asset(
                'illustrations/Illustration 1.svg',
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              "SwiftUI for iOS 14",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              "20 Sections",
              style: TextStyle(color: Colors.white, fontSize: 13.0),
            ),
          ],
        ),
      ),
    );
  }
}
