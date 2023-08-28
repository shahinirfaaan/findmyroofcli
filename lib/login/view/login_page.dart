import 'package:findmyroof1/home%20page/view/home_page.dart';
import 'package:findmyroof1/mainhome/mainhome.dart';
import 'package:findmyroof1/signup/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 0, 118, 206),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 118, 206),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please fill this field";
                    }
                  },
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please fill this field";
                    }
                  },
                  controller: password,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password',
                      style: TextStyle(color: Color.fromARGB(255, 0, 118, 206)),
                    )),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () async {
                            try {
                              final _auth = FirebaseAuth.instance;
                              final userRef =
                                  await _auth.signInWithEmailAndPassword(
                                      email: email.text,
                                      password: password.text);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainHome(),
                                  ));
                            } catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          "invalid username or password")));
                            }
                          },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 118, 206)),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Text('or'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
                  },
                  
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(color: Color.fromARGB(255, 0, 118, 206)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
