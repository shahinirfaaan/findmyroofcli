import 'package:findmyroof1/mainhome/view/widgets/apartment_list.dart';
import 'package:findmyroof1/mainhome/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Apartment extends StatefulWidget {
  const Apartment({super.key});

  @override
  State<Apartment> createState() => _ApartmentState();
}

class _ApartmentState extends State<Apartment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ApartmentList(),
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 118, 206),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Apartments',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
