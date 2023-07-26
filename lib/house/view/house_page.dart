import 'package:findmyroof1/mainhome/view/widgets/drawer.dart';
import 'package:findmyroof1/mainhome/view/widgets/house_list.dart';
import 'package:flutter/material.dart';

class House extends StatefulWidget {
  const House({super.key});

  @override
  State<House> createState() => _HouseState();
}

class _HouseState extends State<House> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HouseList(),
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 118, 206),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Houses',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
