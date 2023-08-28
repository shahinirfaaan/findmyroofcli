import 'package:findmyroof1/login/view/login_page.dart';
import 'package:findmyroof1/signup/repo/signup_repo.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 118, 206),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
              Text(
                'Sign Up',
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
                controller: name,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Name'),
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
                    border: OutlineInputBorder(), hintText: 'Email'),
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
                controller: phoneNumber,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Phone Number'),
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
                controller: password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
                obscureText: true,
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () async{
                    if(_formKey.currentState!.validate())
                                     
                              await SignupRepo().createUser(
                                name.text,
                               email.text,
                                phoneNumber.text,
                                 password.text,
            
                                 context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 118, 206),
                  ),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(color: Colors.white),
                  ))
                      ],
                    ),
            )),
      ),
    );
  }
}
