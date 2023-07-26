import 'package:findmyroof1/login/view/login_page.dart';
import 'package:findmyroof1/signup/view/signup_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Image.asset('assets/images/house.png'),
          Text(
            'WELCOME TO FIND MY ROOF',
            style:
                TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Buy, sell or rent your property',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Text('LOG IN'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF7CB9E8),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupPage(),
                        ));
                  },
                  child: Text('SIGN UP'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF7CB9E8),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
