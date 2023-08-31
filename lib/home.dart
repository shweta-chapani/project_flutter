import 'package:flutter/material.dart';
import 'package:project_flutter/loginpage.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }),);

              }, // Image tapped
              child: Image.asset(
                'assets/image/logopng.png',
              ),
            ),
          ),


        ],
      )
      ,
    );
  }
}
