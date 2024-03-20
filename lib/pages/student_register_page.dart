import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../auth_pages/student_auth.dart';
import 'student_login_page.dart';

class StudentRegiterPage extends StatefulWidget {
  const StudentRegiterPage({super.key});

  @override
  State<StudentRegiterPage> createState() => _LearnerRegiterPageState();
}

class _LearnerRegiterPageState extends State<StudentRegiterPage> {
  TextEditingController cPass = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController pass = TextEditingController();

  postDetailsToFirestore() async {
    var user = FirebaseAuth.instance.currentUser;
    CollectionReference studentRegister =
        FirebaseFirestore.instance.collection('student_users');
    studentRegister.doc(user!.email).set(
      {'email': emailCtrl.text, 'password': pass.text, 'roal': 'student'},
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LearnerAuthPage(
          userType: '',
        ),
      ),
    );
  }

  // sign user up method
  void signUserUp() async {
    // Check if password and confirm password fields match
    if (pass.text != cPass.text) {
      // Passwords do not match, show error message and return
      showErrorMesaage('Passwords do not match');
      return;
    }

    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try creating the user
    try {
      // check if password is confirmed
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: emailCtrl.text,
        password: pass.text,
      )
          .then((value) => {postDetailsToFirestore()})
          .catchError((e) {});

      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);
      // show error message
      showErrorMesaage(e.code);
    }
  }

  // error message to user
  void showErrorMesaage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
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
                  'Welcome!',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color(0xff3A3A3A),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'සාදරයෙන් පිළිගනිමු !',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
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
                  height: 40,
                ),
                //
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
                    controller: emailCtrl,
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: 23,
                      ),
                      hintText: 'Enter Email',
                      hintStyle:
                          const TextStyle(color: Colors.black, fontSize: 14.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 100, 5),
                  child: Text(
                    "Create Your Password",
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
                      prefixIconConstraints: const BoxConstraints(minWidth: 45),
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
                      hintText: 'Enter your password....',
                      hintStyle:
                          const TextStyle(color: Colors.black, fontSize: 14.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 100, 5),
                  child: Text(
                    "Re-enter Your Password",
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
                    controller: cPass,
                    style: const TextStyle(color: Colors.black, fontSize: 14.5),
                    obscureText: isPasswordVisible ? false : true,
                    decoration: InputDecoration(
                      prefixIconConstraints: const BoxConstraints(minWidth: 45),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: pass.text != cPass.text ? Colors.red : Colors.black, // Change color based on password match condition
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
                      hintText: 'Re-enter your password....',
                      hintStyle: const TextStyle(color: Colors.black, fontSize: 14.5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    signUserUp();
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
                      color: Color(0xff94183D),
                    ),
                    child: Text('SIGN UP',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StudentLoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
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
