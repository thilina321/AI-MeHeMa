import 'package:flutter/material.dart';
import 'package:projectmehema/listening/audio/music_list.dart';

class SelectEmotion extends StatefulWidget {
  const SelectEmotion({super.key});

  @override
  State<SelectEmotion> createState() => _SelectEmotionState();
}

class _SelectEmotionState extends State<SelectEmotion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Tracks'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const AudioList()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 150), 
                  ),
                  child: const Text('Relaxing' , style: TextStyle(fontSize: 20), ),
                ),
                const SizedBox(width: 50), 
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 150), 
                  ),
                  child: const Text('Emotional',style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
            const SizedBox(height: 20), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 150), 
                  ),
                  child: const Text('Happy',style: TextStyle(fontSize: 20),),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 150), 
                  ),
                  child: const Text('Sad',style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 150), 
                  ),
                  child: const  Text('Angry',style: TextStyle(fontSize: 20),),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 150), 
                  ),
                  child: const Text('Restless',style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 150), 
                  ),
                  child: const Text('Romantic',style: TextStyle(fontSize: 20),),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 150), 
                  ),
                  child: const Text('Motivational',style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
