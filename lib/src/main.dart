import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
Widget build(BuildContext context) {
  return  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ExpenseTracker",
    color:Colors.white,
    routes: <String, WidgetBuilder>{
      '/': (context) => const SplashScreen(),
      '/Home': (context) => const HomeScreen(),
    },
  );
}
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushNamed(context, '/Home')
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.white,
        alignment:Alignment.center,
        child: const Text("ExpenseTracker",
            style: TextStyle( color: Colors.black, fontSize: 30)
        )
      ),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child:Text("Welcome to Home Page",
              style: TextStyle( color: Colors.black, fontSize: 30)
          )
      ),
    );
  }
}
