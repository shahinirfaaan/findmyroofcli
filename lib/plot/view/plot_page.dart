import 'package:findmyroof1/mainhome/view/widgets/drawer.dart';
import 'package:findmyroof1/mainhome/view/widgets/plot_list.dart';
import 'package:flutter/material.dart';

class Plot extends StatefulWidget {
  const Plot({super.key});

  @override
  State<Plot> createState() => _PlotState();
}

class _PlotState extends State<Plot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PlotList(),
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 118, 206),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Plots',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
