import 'package:findmyroof1/mainhome/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 118, 206),
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'About Us',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/findmyrooflogo.png',
                height: 200,
                width: 200,
              ),
              padding: EdgeInsets.all(16.0),
            ),
            Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Indias No. 1 property portal, deals with every aspect of the consumers needs in the real estate industry. It is an online forum where buyers, sellers and brokers/agents can exchange information about real estate properties quickly, effectively and inexpensively. FindMyRoof, you can advertise a property, search for a property, browse through properties and keep yourself updated with the latest news and trends making headlines in the realty sector.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ))
          ],
        ));
  }
}
