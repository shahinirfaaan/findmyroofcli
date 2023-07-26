import 'package:findmyroof1/edit_profile/view/edit_profile_page.dart';
import 'package:findmyroof1/mainhome/view/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 118, 206),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Image.asset(
              'assets/images/profile.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome Shahin Irfan!',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text('shahinirfan9@gmail.com'),
            Text('+91 9995661497'),
            Text('Kozhikode'),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
              },
              child: Text('Edit Your Profile'),
              style: ButtonStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
