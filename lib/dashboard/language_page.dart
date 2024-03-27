import 'package:flutter/material.dart';

class PositionSwitcher extends StatefulWidget {
  @override
  _PositionSwitcherState createState() => _PositionSwitcherState();
}

class _PositionSwitcherState extends State<PositionSwitcher> {
  bool _switched = false;

  void _switchPositions() {
    setState(() {
      _switched = !_switched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (!_switched) ...[
                SizedBox(
                  height: 60,
                ),
                // Show top box at its original position
                Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFFBC00), width: 3),
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the value as per your preference
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/american.png',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        'English',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8E0D37)),
                      ),
                    ],
                  ),
                ),
                // Button between the boxes
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Defines a circular shape
                    color: Color(0xffE0AB20), // Background color
                  ),
                  child: MaterialButton(
                    onPressed: _switchPositions,
                    child: Transform.rotate(
                      angle: 1.6,
                      child: Icon(
                        Icons.compare_arrows,
                        size: 40,
                        color: Color(0xff8A670E), // Icon color
                      ),
                    ),
                    padding: EdgeInsets.all(16),
                    shape:
                        CircleBorder(), // Ensures the button takes a circular shape
                  ),
                ),
                // Show bottom box at its original position
                Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFFBC00), width: 3),
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the value as per your preference
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/srilanka.png',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        'Sinhala',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8E0D37)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350, // Width of the container
                  height: 200, // Height of the container
                  decoration: BoxDecoration(
                    color:
                        Color(0xffB2840C), // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius to create curved corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Icon(
                              Icons.volume_up,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text(
                              'Sinhala',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(185, 10, 0, 0),
                            child: Icon(
                              Icons.paste,
                              color: Color(0xff94183D),
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                          width: 300,
                          child: TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              labelText: 'Enter text',
                              labelStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 25),
                              alignLabelWithHint: true,
                            ),
                            onChanged: (value) {
                              print('Text changed: $value');
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Icon(
                              Icons.camera_alt,
                              color: Color(0xff94183D),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Icon(
                              Icons.edit,
                              color: Color(0xff94183D),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Icon(
                              Icons.mic_none_rounded,
                              color: Color(0xff94183D),
                            ),
                          ),
                          Icon(
                            Icons.mic,
                            color: Color(0xff94183D),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Icon(
                              Icons.mic,
                              color: Color(0xff94183D),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ] else ...[
                // Show bottom box at the top position
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFFBC00), width: 3),
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the value as per your preference
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/srilanka.png',
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        'Sinhala',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8E0D37)),
                      ),
                    ],
                  ),
                ),
                // Button between the boxes
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Defines a circular shape
                    color: Color(0xffE0AB20), // Background color
                  ),
                  child: MaterialButton(
                    onPressed: _switchPositions,
                    child: Transform.rotate(
                      angle: 1.6,
                      child: Icon(
                        Icons.compare_arrows,
                        size: 40,
                        color: Color(0xff8A670E), // Icon color
                      ),
                    ),
                    padding: EdgeInsets.all(16),
                    shape:
                        CircleBorder(), // Ensures the button takes a circular shape
                  ),
                ),
                // Show top box at the bottom position
                Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFFBC00), width: 3),
                    borderRadius: BorderRadius.circular(
                        20), // Adjust the value as per your preference
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/american.png', // Change 'image_name.png' to your image asset path
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        'English',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff8E0D37)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350, // Width of the container
                  height: 200, // Height of the container
                  decoration: BoxDecoration(
                    color:
                        Color(0xffB2840C), // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius to create curved corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Icon(
                              Icons.volume_up,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text(
                              'English',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(185, 10, 0, 0),
                            child: Icon(
                              Icons.paste,
                              color: Color(0xff94183D),
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                          width: 300,
                          child: TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              labelText: 'Enter text',
                              labelStyle: TextStyle(
                                  color: Colors.grey[400], fontSize: 25),
                              alignLabelWithHint: true,
                            ),
                            onChanged: (value) {
                              print('Text changed: $value');
                            },
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Icon(
                              Icons.camera_alt,
                              color: Color(0xff94183D),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Icon(
                              Icons.edit,
                              color: Color(0xff94183D),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Icon(
                              Icons.mic_none_rounded,
                              color: Color(0xff94183D),
                            ),
                          ),
                          Icon(
                            Icons.mic,
                            color: Color(0xff94183D),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Icon(
                              Icons.mic,
                              color: Color(0xff94183D),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
