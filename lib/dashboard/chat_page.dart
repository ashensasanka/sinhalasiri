import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final List<ChatMessage> _messages = [];

  void _handleSubmitted(String text) {
    _controller.clear();
    setState(() {
      _messages.insert(
          0,
          ChatMessage(
            text: text,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Image.asset(
            'assets/chatimage.png',
            height: 100,
            width: 300,
          ),
          Flexible(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _messages[index];
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Colors.blue),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: Container(
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blue), // Border color
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: Offset(0, 3), // Offset of shadow
                    ),
                  ],
                ),
                child: TextField(
                  controller: _controller,
                  onSubmitted: _handleSubmitted,
                  decoration: InputDecoration(
                    hintText: 'Send a message',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    border: InputBorder.none, // Remove default TextField border
                    suffixIcon: IconButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      icon: Icon(Icons.mic_none,color: Color(0xffB2840C),size: 35,), // Add your desired icon here
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15,),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffB2840C), // Background color of the circle
              ),
              child: IconButton(
                icon: Icon(Icons.send_rounded),
                onPressed: () => _handleSubmitted(_controller.text),
                color: Colors.white, // Color of the icon
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;

  const ChatMessage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xffB2840C),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0),
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 16.5,
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.account_circle_outlined,
              size: 65,
              color: Color(
                0xff600220,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
