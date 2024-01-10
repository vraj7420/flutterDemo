import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
            ()=>Navigator.pushNamed(context, '/LogInScreen')
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color:Colors.white,
          alignment:Alignment.center,
          child: const Text("ExpenseTracker",
              style: TextStyle( color: Color(0xFFFE3A82), fontSize: 34,fontWeight:FontWeight.bold)
          )
      ),
    );
  }
}