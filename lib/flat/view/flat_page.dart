import 'package:findmyroof1/mainhome/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Flat extends StatefulWidget {
  const Flat({super.key});

  @override
  State<Flat> createState() => _FlatState();
}

class _FlatState extends State<Flat> {
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
              'No flats to show',
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
          'Flats',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
