// import 'package:final_project/home/summary_home.dart';
// import 'package:final_project/screens/summart_accounts.dart';
// import 'package:flutter/material.dart';
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         child: Column(children: [
//             SummaryHome(),
//             summaryaccount()  
//         ],),
//       ),
//     ); }
// }


import 'package:final_project/home/summary_home.dart';
import 'package:final_project/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<HomeScreen> {
  Future<void> logoutUser() async {
    await setTokenToBlank();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SummaryHome(),
          SummaryAccounts(),
          // SummaryTransactions()
        ],
      ),
    );
   }
   
     setTokenToBlank() {}
     
       SummaryAccounts() {}
}