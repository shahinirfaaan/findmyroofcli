import 'package:findmyroof1/mainhome/view/mainhome_page.dart';
import 'package:findmyroof1/messages/view/messages_page.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          iconSize: 25,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color.fromARGB(255, 0, 118, 206),
          selectedItemColor: Color.fromARGB(255, 0, 118, 206),
          items: [
            
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20,
                  width: 35,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Messages(),
                            ));
                      },
                      icon: Icon(Icons.search)),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 20,
                  width: 35,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainHome(),
                            ));
                      },
                      icon: Icon(Icons.favorite)),
                ),
                label: ''),
            
          ]);
    
  }
}