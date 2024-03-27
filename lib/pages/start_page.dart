import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: ClipRRect(
                      // Adjust the radius value to change the roundness
                      child: Image.asset('assets/AutoLayoutHorizontal4.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(45, 0, 15, 0),
                    child: Row(
                      children: [
                        ClipRRect(
                          // Adjust the radius value to change the roundness
                          child: Image.asset('assets/Whichoneoftheseis.jpg'),
                        ),
                        SizedBox(width: 10,),
                        ClipRRect(
                          // Adjust the radius value to change the roundness
                          child: Image.asset('assets/apple.jpg'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
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
                                  color: Colors.black
                                      .withOpacity(0.3), // Shadow color
                                  spreadRadius: 3, // Spread radius
                                  blurRadius: 5, // Blur radius
                                  offset: Offset(0, 3), // Offset of shadow
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
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => DashBoardVoice(),
                            //   ),
                            // );
                          },
                          child: Container(
                            width: 165,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Color(0xffDADADA),
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
                                  color: Colors.black
                                      .withOpacity(0.3), // Shadow color
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
                                  color: Colors.black
                                      .withOpacity(0.3), // Shadow color
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
                  SizedBox(height: 30,),
                  Container(
                      height: 84,
                      width: double.infinity,
                      child: Image.asset('assets/Screenshot2.jpg')),
                ],
              ),
            ),
          ],
        ));
  }
}
