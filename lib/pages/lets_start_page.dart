import 'package:flutter/material.dart';

import 'student_login_page.dart';
import 'student_register_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  // Adjust the radius value to change the roundness
                  child: Image.asset('assets/SinhalaSiri.jpg'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  // Adjust the radius value to change the roundness
                  child: Image.asset('assets/sinhalasrilogo.jpg'),
                ),
                Text(
                  'ආයුබෝවන්',
                  style: TextStyle(
                    color: Color(0xffB2840C),
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Made by',
                      ),
                      TextSpan(
                        text: ' Abdul Akram',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Speak, Connect, Discover!',
                  style: TextStyle(
                    fontSize: 19.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.5), // Change the opacity value as needed
                    shadows: [
                      Shadow(
                        blurRadius: 2, // Change the blur radius as needed
                        color: Colors.grey.withOpacity(0.5), // Change the shadow color and opacity as needed
                        offset: Offset(2, 2), // Change the shadow offset as needed
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentRegiterPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 65,
                    width: 275,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xffB2840C),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Color(0xffB2840C),
                            offset: const Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text('GET STARTED',
                        style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StudentLoginPage()),
                    );
                  },
                  child: Container(
                    height: 65,
                    width: 275,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Color(0xffB2840C),
                            offset: const Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('LETS CONTINUE I HAVE AN ACCOUNT',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff94183D),
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
