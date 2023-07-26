import 'package:findmyroof1/mainhome/view/mainhome_page.dart';
import 'package:findmyroof1/messages/view/messages_page.dart';
import 'package:flutter/material.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 118, 206),
        iconTheme: IconThemeData(color: Colors.white),       
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/detailhouse.png",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '30000/month',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text('3 BHK House', style: TextStyle(fontWeight: FontWeight.w400)),
            Text('Pottammal, Kozhikode',
                style: TextStyle(fontWeight: FontWeight.w400)),
            SizedBox(
              height: 20,
            ),
            Text(
              'Details',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Type: House'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
                      icon: Icon(Icons.chat_bubble)),
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
                      icon: Icon(Icons.call)),
                ),
                label: ''),
            
          ])
    ,
    );
  }
}
