import 'package:findmyroof1/mainhome/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});
  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'No notification to show',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 118, 206),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
