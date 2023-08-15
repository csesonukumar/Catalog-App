import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final imageurl =
    //     "https://media.licdn.com/dms/image/C4D03AQFHSPhBwz-WBA/profile-displayphoto-shrink_800_800/0/1658643743953?e=2147483647&v=beta&t=WbIN_w9BouDjgZDLzixBvLn554xc8-vg_-bCqVJzYo4";
    return Drawer(
      child: Container(
        color: Colors.grey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('John Doe'),
              accountEmail: Text('john.doe@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/C4D03AQFHSPhBwz-WBA/profile-displayphoto-shrink_800_800/0/1658643743953?e=2147483647&v=beta&t=WbIN_w9BouDjgZDLzixBvLn554xc8-vg_-bCqVJzYo4"),
              ),
              // decoration: BoxDecoration(
              //   color: Colors.red,
              // ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                'Item 1',
                textScaleFactor: 1.8,
                style: TextStyle(
                  color: Colors.white,
                  //fontSize: 15.0,
                ),
              ),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text(
                'Item 2',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                // Handle item 2 tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
