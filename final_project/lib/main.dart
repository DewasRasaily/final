import 'package:final_project/hoc/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:final_project/screens/Login_screen.dart'; // Import the LoginScreen

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginAPP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home', 
      routes: {
        '/': (context) => LoginScreen(), // route for the login screen
        '/home': (context) => HomeLayout(), // route for the home screen
      },
    );
  }
}

