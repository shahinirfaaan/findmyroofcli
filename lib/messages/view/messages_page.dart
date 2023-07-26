import 'package:findmyroof1/mainhome/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
              'No messages to show',
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
          'Messages',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      
    );
  }
}
