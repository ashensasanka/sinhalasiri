import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../auth_pages/student_auth.dart';
import 'student_register_page.dart';
class StudentLoginPage extends StatefulWidget {
  const StudentLoginPage({super.key});

  @override
  State<StudentLoginPage> createState() => _StudentLoginPageState();
}

class _StudentLoginPageState extends State<StudentLoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  void wrongEmailMessage() {
    if (mounted) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Incorrect Email or Password'),
          );
        },
      );
    }
  }

  void signUserIn() async {
    if (mounted) {
      // Show loading circle
      showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );
    }
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: pass.text,
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LearnerAuthPage(
            userType: '',
          ),
        ),
      );
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context); // Dismiss loading circle
      if (e.code == 'invalid-credential') {
        wrongEmailMessage();
      }
    }
  }

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  // Adjust the radius value to change the roundness
                  child: Image.asset('assets/SinhalaSiri.jpg'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.5,
                    color: Color(0xff3A3A3A),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'ආපසු සාදරයෙන් පිළිගනිමු !',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    color: Color(0xff3A3A3A),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  // Adjust the radius value to change the roundness
                  child: Image.asset('assets/Subheading.jpg'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 140, 5),
                  child: Text(
                    "Enter Your Email",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30)
                      .copyWith(bottom: 10),
                  child: TextField(
                    controller: email,
                    style: const TextStyle(color: Colors.black, fontSize: 17),
                    decoration: InputDecoration(
                        prefixIconConstraints:
                        const BoxConstraints(minWidth: 45),
                        prefixIcon: const Icon(
                          Icons.alternate_email_outlined,
                          color: Colors.black,
                          size: 24,
                        ),
                        hintText: 'Enter Email',
                        hintStyle: const TextStyle(
                            color: Colors.black, fontSize: 14.5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 140, 5),
                  child: Text(
                    "Enter Password",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30)
                      .copyWith(bottom: 10),
                  child: TextField(
                    controller: pass,
                    style: const TextStyle(color: Colors.black, fontSize: 14.5),
                    obscureText: isPasswordVisible ? false : true,
                    decoration: InputDecoration(
                        prefixIconConstraints:
                        const BoxConstraints(minWidth: 45),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                          size: 22,
                        ),
                        suffixIconConstraints:
                        const BoxConstraints(minWidth: 45, maxWidth: 46),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: Icon(
                            isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                            size: 22,
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                            color: Colors.black, fontSize: 14.5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    signUserIn();
                  },
                  child: Container(
                    height: 65,
                    width: 275,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black12.withOpacity(.2),
                            offset: const Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff438F0B),
                    ),
                    child: Text('SIGN IN',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StudentRegiterPage()), // Replace NextPage() with the widget of your next page
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
