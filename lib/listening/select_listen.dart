import 'package:flutter/material.dart';
import 'package:projectmehema/listening/audio/second_interface.dart';
//import 'package:projectmehema/listening/audio/second_interface.dart';

class SelectListen extends StatefulWidget {
  const SelectListen({super.key});

  @override
  State<SelectListen> createState() => _SelectListenState();
}
class _SelectListenState extends State<SelectListen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mindful Listening',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval( 
              child: Image.asset(
                'images/baby.jpg',
                width: 270, 
                height: 270,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondInterface()));
              },
              child: Text(
                'Music Tracks',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(180, 80),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video/SecondInterface');
              },
              child: Text(
                'Music Videos',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(180, 80),
              ),
            ),
          ],
        ),
      ),
    );
  }
}