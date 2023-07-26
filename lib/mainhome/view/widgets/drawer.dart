import 'package:findmyroof1/about/view/about_page.dart';
import 'package:findmyroof1/favourites/view/favourites_page.dart';
import 'package:findmyroof1/mainhome/view/mainhome_page.dart';
import 'package:findmyroof1/messages/view/messages_page.dart';
import 'package:findmyroof1/profile/view/profile_page.dart';
import 'package:findmyroof1/search/view/search_page.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: Image.asset(
                  'assets/images/profile.png',
                  height: 90,
                  width: 90,
                ),
                accountName: Text('Shahin Irfan'),
                accountEmail: Text('shahinirfan9@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainHome(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Search Property'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favourites'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Favourites(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Messages(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutUs(),
                    ));
              },
            ),
          ],
        ),
      );
    
  }
}