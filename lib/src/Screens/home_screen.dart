import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _State();
}

class _State extends State<HomeScreen> {
  Widget listView() {
    return const Column(
      children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            Text("Recent Expense Report",
            style: TextStyle(
                color:Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
            Text("View All",
            style:TextStyle(color:Color(0xFFFE3A82),
            fontSize: 14,
            fontWeight: FontWeight.w500),),

          ],
        )
      ],
    );

    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     const Text(
    //       "No expense report found!",
    //       style: TextStyle(
    //           color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
    //     ),
    //     const Padding(
    //       padding: EdgeInsets.only(top: 8),
    //       child: Text("Create an expense report to get started",
    //           style: TextStyle(
    //               color: Color(0xFF555555),
    //               fontWeight: FontWeight.w400,
    //               fontSize: 16)),
    //     ),
    //     const SizedBox(
    //       height: 74,
    //     ),
    //     SizedBox(
    //       width: double.infinity,
    //       child: TextButton(
    //         style: TextButton.styleFrom(
    //             backgroundColor: const Color(0xFFFE3A82),
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(10),
    //             )),
    //         onPressed: () {},
    //         child: Container(
    //             padding: const EdgeInsets.all(10),
    //             child: const Text(
    //               'Create Expense Report',
    //               style: TextStyle(color: Colors.white),
    //             )),
    //       ),
    //     ),
    //   ],
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 80, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Good morning, Helen",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Image.asset(
                        'assets/images/MessageIcon.png'), // Replace with your actual image path
                    onPressed: () {
                      // Your button press logic here
                    },
                  ),
                  IconButton(
                    icon: Image.asset(
                        'assets/images/notification.png'), // Replace with your actual image path
                    onPressed: () {
                      // Your button press logic here
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFE8E8E8)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.topLeft,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "Expense report \ncreated",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF555555)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 19.0), // Adjust the width as needed for space
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFE8E8E8)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      alignment: Alignment.topLeft,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("3",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                          Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              "Expense report \nsubmitted",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF555555)),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(child: listView()),
            ],
          ),
        ),
      ),
    );
  }
}
