import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 118, 206),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  label: Text('Name'),
                  ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                    
                  ),
                  label: Text('Email'),
                  ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                  label: Text('Phone'),
                  ),

            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.pin),
                  border: OutlineInputBorder(
                    
                  ),
                  label: Text('Location'),
                  ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {}, child: Text('Save'),
            style: ButtonStyle(
            ),
            )
          ],
        ),
      ),
    );
  }
}
