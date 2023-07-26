import 'package:findmyroof1/mainhome/view/widgets/bottom_navigation.dart';
import 'package:findmyroof1/mainhome/view/widgets/detail_screen.dart';
import 'package:flutter/material.dart';

class HouseDetail extends StatefulWidget {
  const HouseDetail({super.key});

  @override
  State<HouseDetail> createState() => _HouseDetailState();
}

class _HouseDetailState extends State<HouseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HouseDetails(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
