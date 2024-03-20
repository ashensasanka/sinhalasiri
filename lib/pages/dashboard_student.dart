import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'lets_start_page.dart';

class DashBoardAdmin extends StatefulWidget {
  const DashBoardAdmin({super.key});

  @override
  State<DashBoardAdmin> createState() => _DashBoardAdminState();
}

class _DashBoardAdminState extends State<DashBoardAdmin> {
  String? _videoURL;
  VideoPlayerController? _controller;
  String? _downloadURL;
  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

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
                style: TextStyle(color: Colors.white), // Set text color to white for "Unit 1"
              ),
              TextSpan(
                text: 'Use basic phrases, greet people',
                style: TextStyle(color: Colors.white,  fontSize: 18), // Set text color to white and italic font style for "Use basic phrases, greet people"
              ),
            ],
          ),
        ),

        actions: [
          IconButton(
            onPressed: () async {
              // Sign out the current user
              try {
                await FirebaseAuth.instance.signOut();
                // Navigate to the login screen or home screen after sign out
                // Example:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StartPage(),
                  ),
                );
              } catch (e) {
                print('Error signing out: $e');
                // Handle signout error
              }
            },
            icon: const Icon(Icons.logout), // Change the icon to your signout icon
            color: Colors.white, // Set icon color to white
          ),
        ],
      ),

      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 26,),
            //Shop
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => DashBoard(),
                //   ),
                // );
              },
              child: Container(
                height: 120,
                width: double.infinity,
                child: Image.asset('assets/div.jpg'),
              ),
            ),
            //AutoLayoutHorizontal1.jpg
            GestureDetector(
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
            GestureDetector(
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
            GestureDetector(
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
//AutoLayoutHorizontal3.jpg
            SizedBox(height: 10,),
            //Screenshot.jpg
            Container(
                height: 84,
                width: double.infinity,
                child: Image.asset('assets/Screenshot.jpg')),
          ],
        ),
      ),
    );
  }

  void _initializeVideoPlayer() {
    _controller = VideoPlayerController.file(File(_videoURL!))
      ..initialize().then((_) {
        setState(() {});
        _controller!.play();
      });
  }

}
