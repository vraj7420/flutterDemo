import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});
  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  var _selectedValue = 0;

  final TextEditingController _dateController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    if (kDebugMode) {
      print("select date");
    }
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (kDebugMode) {
      print(picked);
    }
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  Widget manualInputView() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 8),
            child: Text(
              "Merchant Name",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Merchant Name",
                isDense: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 8),
            child: Text(
              "Amount",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Amount",
                isDense: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 8),
            child: Text(
              "Date",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          TextField(
            controller: _dateController,
            onTap: () {
              _selectDate(context);
            },
            decoration: InputDecoration(
                labelText: "Date",
                isDense: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 8),
            child: Text(
              "Description",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Description",
                isDense: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 8),
            child: Text(
              "Category",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "Category",
                isDense: true,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                )),
          ),
        ],
      ),
    );
  }

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
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                "Add Expense",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Text("How do you want to input your expense?"),
            RadioListTile(
              contentPadding: const EdgeInsets.all(0),
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              title: const Text(
                'Manual input',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              value: 1,
              groupValue: _selectedValue,
              activeColor: const Color(0xFFFE3A82),
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.all(0),
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              activeColor: const Color(0xFFFE3A82),
              title: const Text(
                'Scan receipt',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              value: 2,
              groupValue: _selectedValue,
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
            ),
            RadioListTile(
              contentPadding: const EdgeInsets.all(0),
              visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity,
              ),
              activeColor: const Color(0xFFFE3A82),
              title: const Text(
                'Voice recognition',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              value: 3,
              groupValue:
                  _selectedValue, // Use _selectedValue to track the selected option
              onChanged: (value) {
                setState(() {
                  _selectedValue =
                      value!; // Update _selectedValue when option 3 is selected
                });
              },
            ),
            Expanded(child: manualInputView())
          ],
        ),
      )),
    );
  }
}
