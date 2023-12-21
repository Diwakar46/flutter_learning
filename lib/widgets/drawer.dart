import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://instagram.fktm8-1.fna.fbcdn.net/v/t51.2885-19/393092623_23964084786540276_7466448003494624604_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fktm8-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=ZIl43N7WfKgAX9uurwn&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAfJ1vQqtSCf5gb7vCg5c9q0TON6CJ5ZVC0deYE2hg3Tw&oe=658848BF&_nc_sid=8b3546";
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Container(
        color: Colors.deepPurple,
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.all(4.0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                accountEmail: Text(
                  'diwakar@email.com',
                  style: TextStyle(color: Colors.white),
                ),
                accountName: Text(
                  'Diwakar Dhamala',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
          ListTile(
            onTap: () {},
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              textScaler: TextScaler.linear(1.2),
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              textScaler: TextScaler.linear(1.2),
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.ant_circle,
              color: Colors.white,
            ),
            title: Text(
              'Bugs',
              textScaler: TextScaler.linear(1.2),
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
            ),
            title: Text(
              'Mail',
              textScaler: TextScaler.linear(1.2),
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.star,
              color: Colors.white,
            ),
            title: Text(
              'Rate us',
              textScaler: TextScaler.linear(1.2),
              style: TextStyle(color: Colors.white),
            ),
          ),
        ]),
      ),
    );
  }
}
