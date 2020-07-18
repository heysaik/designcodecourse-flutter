import 'package:designcodecourse_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Spacer(),
                    CircleAvatar(
                        radius: 17,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          color: Color(0xFF8449FC),
                          size: 20,
                        )),
                  ],
                ),
                Spacer(),
                Text(
                  "Learn",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/Livestream 2.jpg'),
              ),
            ),
          ),
          ListTile(
            title: Text("Courses"),
            leading: Icon(Icons.book),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, Routes.courses);
            },
          ),
          ListTile(
            title: Text("Tutorials"),
            leading: Icon(Icons.featured_play_list),
          ),
          ListTile(
            title: Text("Livestreams"),
            leading: Icon(Icons.tv),
          ),
          ListTile(
            title: Text("Certificates"),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: Text("Search"),
            leading: Icon(Icons.search),
          ),
          Divider(),
          ListTile(
            title: Text("Version 1.0"),
          )
        ],
      ),
    );
  }
}
