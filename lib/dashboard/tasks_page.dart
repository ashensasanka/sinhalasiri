import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sinhalasiri/navigation/navigation.dart';

import '../navigation/voice_navigation.dart';
import '../tasks/task_voice.dart';

class TasksPage extends StatefulWidget {
  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 56,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeNavigation(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.clear,
                      size: 25,
                    ), // Icon button to navigate to TasksPage
                    color: Colors.black,
                  ),
                  Container(
                    width: 250,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: SizedBox(
                        height: 15, // Adjust the thickness of the progress bar
                        child: LinearProgressIndicator(
                          value: 25 / 100,
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color(0xffFFC800),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    CupertinoIcons.heart_fill,
                    color: Color(0xff94183D),
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '1/4',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Which one of these is  ',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 21,
                      color: Color(0xff94183D),
                    ),
                  ),
                  Text(
                    '"ඇපල්"?',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 21,
                      color: Color(0xffB2840C),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              //
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 250,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Alert'),
                              content: Text('Worng Answer !'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 165,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xffDADADA),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/Choice1.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VoiceNavigation(),
                          ),
                        );
                      },
                      child: Container(
                        width: 165,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xffDADADA),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              spreadRadius: 3, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: Offset(0, 3), // Offset of shadow
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/Choice2.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 250,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Alert'),
                              content: Text('Worng Answer !'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 165,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xffDADADA),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              spreadRadius: 3, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: Offset(0, 3), // Offset of shadow
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/Choice3.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Alert'),
                              content: Text('Worng Answer !'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 165,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xffDADADA),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.black.withOpacity(0.3), // Shadow color
                              spreadRadius: 3, // Spread radius
                              blurRadius: 5, // Blur radius
                              offset: Offset(0, 3), // Offset of shadow
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/Choice4.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
