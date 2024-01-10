import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(top: 80, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 3),
                child: Text(
                  "Login with your employee ID",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, bottom: 8),
                child: Text(
                  "Employee ID",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Employee ID",
                    isDense: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    )),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(top: 20,
                bottom: 50),
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFFE3A82),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/BottomTab');
                  },
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
