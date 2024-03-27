import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../navigation/navigation.dart';
import '../pages/student_loginorregister_page.dart';

class LearnerAuthPage extends StatefulWidget {
  final String userType;
  LearnerAuthPage({Key? key, required this.userType});

  @override
  State<LearnerAuthPage> createState() => _LearnerAuthPageState();
}

class _LearnerAuthPageState extends State<LearnerAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User is logged in
          if (snapshot.hasData) {
            User? user = snapshot.data;
            if (user != null) {
              return FutureBuilder<DocumentSnapshot>(
                future: FirebaseFirestore.instance.collection('student_users').doc(user.email).get(),
                builder: (context, documentSnapshot) {
                  if (documentSnapshot.hasData && documentSnapshot.data != null) {
                    String userRole = documentSnapshot.data!.get('roal');
                    if (userRole == 'student') {
                      return const HomeNavigation();
                    } else {
                      return const CircularProgressIndicator();
                    }
                  } else {
                    return const CircularProgressIndicator(); // Handle loading state
                  }
                },
              );
            }
          }
          // User is not logged in
          return LearnerLoginOrRegisterPage(userType: widget.userType);
        },
      ),
    );
  }
}
