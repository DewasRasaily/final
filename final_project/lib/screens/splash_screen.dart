
import 'package:final_project/common/account_card.dart';
import 'package:final_project/hoc/home_layout.dart';
import 'package:final_project/plugins/https.dart';
import 'package:final_project/screens/Login_screen.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    checkIfUserIsLoggedIn();
  }

  Future<void> checkIfUserIsLoggedIn() async{
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = await getTokenFromLocalStorage();
    if(token != ''){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomeLayout()));
    }else{
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginScreen()));
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the ',
              textAlign: TextAlign.center,
              style: TypoStyles().kPageHeader,
            ),
            Text(
              'Expense Tracker',
              textAlign: TextAlign.center,
              style: TypoStyles().kPageHeader,
            ),
          ],
        ),
      ),
    ));
  }
}