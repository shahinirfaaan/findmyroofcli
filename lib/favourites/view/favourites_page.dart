import 'package:findmyroof1/mainhome/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
              'No favourites to show',
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
          'Favourites',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
