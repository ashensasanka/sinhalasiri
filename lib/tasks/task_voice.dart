import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../navigation/gara_navigation.dart';
import '../navigation/navigation.dart';

class TaskVoice extends StatefulWidget {
  const TaskVoice({super.key});

  @override
  State<TaskVoice> createState() => _DashBoardState();
}

class _DashBoardState extends State<TaskVoice> {
  final player = AudioPlayer();

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
                  height: 70,
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
                          height:
                              15, // Adjust the thickness of the progress bar
                          child: LinearProgressIndicator(
                            value: 50 / 100,
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
                      '2/4',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      'What do you hear?  ',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 22.5,
                        color: Color(0xff94183D),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      playSound();
                    },
                    child: Container(
                      width: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color(0xffDADADA),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        'assets/play.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      height: 160,
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ඔයාට කොහොම ද',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                  color: Color(0xff94183D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 160,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'Alert',
                                ),
                                content: Text(
                                  'Worng Answer !',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      'OK',
                                    ),
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.3), // Shadow color
                                spreadRadius: 3, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 3), // Offset of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ඔයා කවුද',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                  color: Color(0xff94183D),
                                ),
                              ),
                            ],
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
                      height: 160,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'Alert',
                                ),
                                content: Text(
                                  'Worng Answer !',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text(
                                      'OK',
                                    ),
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.3), // Shadow color
                                spreadRadius: 3, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 3), // Offset of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'වෙලාව කීයද',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                  color: Color(0xff94183D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 160,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(
                                  'Alert',
                                ),
                                content: Text(
                                  'Your Answer is correct !',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => GaraNavigation(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'OK',
                                    ),
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.3), // Shadow color
                                spreadRadius: 3, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 3), // Offset of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ඔයාගේ වයස කීයද',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                  color: Color(0xff94183D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 84,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/AutoLayoutHorizontal5.jpg',
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> playSound() async {
    String path1 = 'audio_file.mp3';
    await player.play(
      AssetSource(path1),
    );
  }
}
