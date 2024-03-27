import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sinhalasiri/dashboard/tasks_page.dart';

import '../navigation/task_navigation.dart';
import '../pages/lets_start_page.dart';
import '../pages/start_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffB2840C), // Set background color to green
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Unit 1\n',
                style: TextStyle(
                    color:
                        Colors.white), // Set text color to white for "Unit 1"
              ),
              TextSpan(
                text: 'Use basic phrases, greet people',
                style: TextStyle(
                    color: Colors.white,
                    fontSize:
                        18), // Set text color to white and italic font style for "Use basic phrases, greet people"
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              try {
                await FirebaseAuth.instance.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StartPage(),
                  ),
                );
              } catch (e) {
                print('Error signing out: $e');
              }
            },
            icon: const Icon(Icons.logout),
            color: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 26,
            ),
            Column(
              children: [
                Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        spreadRadius: 1, // Spread radius
                        blurRadius: 4, // Blur radius
                        offset: Offset(0, 2), // Shadow offset
                      ),
                    ], // Adjust the value for the desired curve
                  ),
                  child: Stack(alignment: Alignment.center, children: [
                    Text(
                      'START',
                      style: TextStyle(
                        color: Color(0xff94183D), // Text color
                        fontWeight: FontWeight.w900,
                        fontSize: 16.5,
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 6,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TaskNavigation(),
                      ),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 57,
                        width: 69,
                        decoration: BoxDecoration(
                          color: Color(0xff94183D),
                          borderRadius: BorderRadius.circular(
                              25), // Adjust the value for the desired curve
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff761331), // Shadow color
                              spreadRadius: 2, // Spread radius
                              offset: Offset(0, 5), // Shadow offset
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.white,
                              size: 43,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 85,
                        width: 90,
                        child: CircularProgressIndicator(
                          strokeWidth: 8,
                          value: 25 / 100,
                          valueColor: AlwaysStoppedAnimation<Color>(Color(0xffFFC800)),
                          backgroundColor: Color(0xffE5E5E5),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 100, 0), // Adjust the vertical spacing as needed
              child: GestureDetector(
                onTap: () {
                  // Handle image button tap
                  // Example: Navigate to another page
                },
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Image.asset('assets/AutoLayoutHorizontal.jpg'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 180, 0),
              child: GestureDetector(
                onTap: () {
                  // Handle image button tap
                  // Example: Navigate to another page
                },
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Image.asset('assets/image-removebg-preview 1.jpg'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
              child: GestureDetector(
                onTap: () {
                  // Handle image button tap
                  // Example: Navigate to another page
                },
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Image.asset('assets/AutoLayoutHorizontal2.jpg'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Handle image button tap
                // Example: Navigate to another page
              },
              child: Container(
                height: 120,
                width: double.infinity,
                child: Image.asset('assets/AutoLayoutHorizontal3.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
