import 'package:flutter/material.dart';


class LearnerLoginOrRegisterPage extends StatefulWidget {
  final String userType;
  const LearnerLoginOrRegisterPage({super.key, required this.userType});

  @override
  State<LearnerLoginOrRegisterPage> createState() => _LearnerLoginOrRegisterPageState();
}


class _LearnerLoginOrRegisterPageState extends State<LearnerLoginOrRegisterPage> {
  // initially  show login page
  bool showLoginPage = true;

  // toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
    // if (widget.userType=='vendor') {
    //   return VendorLoginPage(userType: widget.userType);
    // } else {
    //   return LearnerLoginPage();
    // }
  }
}
