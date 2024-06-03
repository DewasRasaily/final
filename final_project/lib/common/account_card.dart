import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      color: Color.fromARGB(255, 184, 96, 96),
      margin: EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            height: 60,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'NBL',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.istockphoto.com/vector/christmas-watercolor-decoration-elements-set-poinsettia-flowers-coniferous-branches-gm1777948075-546502161?utm_source=pixabay&utm_medium=affiliate&utm_campaign=SRP_illustration_sponsored&utm_content=https%3A%2F%2Fpixabay.com%2Fillustrations%2Fsearch%2Fflower%2F&utm_term=flower'),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  child: Text('Nu. 123233', style: TextStyle(color: Colors.white))),
                Container(child: Text('Nu. 123233 this month', style: TextStyle(color: Colors.white),)),
              ],
            ),
          ),
          //     Container(
          //         width: 100,
          //         color:Colors.black,
          //         margin: EdgeInsets.only(right:4),
          //       ),

          //         Container(
          //         width: 100,
          //         color: Colors.red,
          //         margin: EdgeInsets.only(right:4),
          //       ),

          // Expanded(
          //   child: Container(
          //       color: Colors.white,
          //       margin: EdgeInsets.only(bottom: 4)),
          // ),
        ],
      ),
    );
  }
}

class TypoStyles {
  get kpagel => null;

  get kPageHeader => null;
}
