import 'package:flutter/material.dart';

class SecondInterface extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Tracks'),
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
                    
                  },
                  child: Text('Relaxing' , style: TextStyle(fontSize: 20), ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150), 
                  ),
                ),
                SizedBox(width: 50), 
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Emotional',style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150), 
                  ),
                ),
              ],
            ),
            SizedBox(height: 20), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Happy',style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150), 
                  ),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Sad',style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150), 
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Angry',style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150), 
                  ),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Restless',style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150), 
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Romantic',style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150), 
                  ),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: Text('Motivational',style: TextStyle(fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 150), 
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
