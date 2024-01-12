
import 'package:expanse_tracker_demo_app/src/Screens/add_expense.dart';
import 'package:expanse_tracker_demo_app/src/Screens/create_exapense.dart';
import 'package:expanse_tracker_demo_app/src/Screens/bottom_tab.dart';
import 'package:expanse_tracker_demo_app/src/Screens/home_screen.dart';
import 'package:expanse_tracker_demo_app/src/Screens/log_in_screen.dart';
import 'package:expanse_tracker_demo_app/src/Screens/splash_screen.dart';
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
      '/LogInScreen': (context) => const LogInScreen(),
      '/Home': (context) => const HomeScreen(),
      '/BottomTab': (context) => const BottomTab(),
      '/CreateExpense': (context) => const CreateExpense(),
      '/AddExpense': (context) => const AddExpense(),


    },
  );
}
}



