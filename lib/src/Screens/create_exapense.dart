
import 'package:flutter/material.dart';

class CreateExpense extends StatefulWidget {
  const CreateExpense({super.key});

  @override
  State<CreateExpense> createState() => _CreateExpenseState();
}

class _CreateExpenseState extends State<CreateExpense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/backBtnIcon.png"),
                          fit: BoxFit.cover),
                    )),
                onTap: () {
                  Navigator.pop(context);
                }),
            Container(
              margin:const EdgeInsets.only(
                top: 10
              ),
              child: const Text(
                "Create Expense Report",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 40, bottom: 8),
              child: Text(
                "Report Name",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Report Name",
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
              padding: const EdgeInsets.only(top: 20, bottom: 0),
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color:Color(0xFFFE3A82))
                    )),
                onPressed: () {
                },
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Add Expense',
                      style: TextStyle(color:  Color(0xFFFE3A82),
                      fontWeight:FontWeight.w600,
                      fontSize: 16),
                    )),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 50),
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFFE3A82),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                onPressed: () {
                },
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Submit Expense Report',
                      style: TextStyle(color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                    )),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
