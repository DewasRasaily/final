import 'package:flutter/material.dart';

TextStyle mystyle = TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      style: mystyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Username",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: mystyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        onPressed: () {
          // Navigate to the home screen when the login button is pressed
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: Text(
          'Login',
          style: TextStyle(color: const Color.fromARGB(255, 201, 82, 82), fontSize: 25),
        ),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.supervised_user_circle, size: 100),
                SizedBox(height: 150),
                usernameField,
                SizedBox(height: 10),
                passwordField,
                SizedBox(height: 10),
                myLoginButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
