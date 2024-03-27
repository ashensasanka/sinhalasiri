import 'package:flutter/material.dart';

import '../navigation/navigation.dart';

class GaraPage extends StatefulWidget {
  const GaraPage({super.key});

  @override
  State<GaraPage> createState() => _GaraPageState();
}

class _GaraPageState extends State<GaraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              margin: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Image.asset(
                'assets/garayakaimage.png',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'You\'ve earned your\n#21 ගරා යකා',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Nice job reaching your monthly goal!',
              style: TextStyle(
                fontSize: 16,
                color: Color(
                  0xff777777,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40,),
            SizedBox(
              height: 70,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeNavigation(),
                    ),
                  );
                },
                child: Container(
                  width: 200,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffDADADA),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color:
                        Colors.black.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/garacontinue.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
