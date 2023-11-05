import 'package:flutter/material.dart';
import 'package:projectmehema/listening/audio/music_emotion_choice.dart';
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
        title: const Text(
          'Mindful Listening',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme:const  IconThemeData(
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
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SelectEmotion()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(180, 80),
              ),
              child: const Text(
                'Music Tracks',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video/SecondInterface');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(180, 80),
              ),
              child: const Text(
                'Music Videos',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}