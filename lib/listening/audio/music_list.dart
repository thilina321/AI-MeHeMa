import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class AudioList extends StatefulWidget {
  const AudioList({super.key});

  @override
  State<AudioList> createState() => _AudioListState();
}
class _AudioListState extends State<AudioList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "space app",
      home: Scaffold(
        backgroundColor: const Color.fromARGB(91, 64, 236, 255),
        appBar: AppBar(
          toolbarHeight: 150,
          leadingWidth: double.infinity,
          title: const Text(
            "Relaxing Music Tracks",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                InkWell(
              onTap: () {
                //what do after click button
              }, 
                child:Container(
                  height: 70,
                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(71, 33, 65, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Stack(
                    children: [
                      Center(
                        child: Text(
                          "Track1",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                const SizedBox(height: 20),
                InkWell(
              onTap: () {
                //what do after click button
              }, 
                child:Container(
                  height: 70,
                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(71, 33, 65, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Stack(
                    children: [
                      Center(
                        child: Text(
                          "Track2",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                const SizedBox(height: 20),
                InkWell(
              onTap: () {
                //what do after click button
              }, 
                child:Container(
                  height: 70,
                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(71, 33, 65, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Stack(
                    children: [
                      Center(
                        child: Text(
                          "Track3",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                const SizedBox(height: 20),
                InkWell(
              onTap: () {
                //what do after click button
              }, 
                child:Container(
                  height: 70,
                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(71, 33, 65, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Stack(
                    children: [
                      Center(
                        child: Text(
                          "Track4",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                const SizedBox(height: 20),
                InkWell(
              onTap: () {
                //what do after click button
              }, 
                child:Container(
                  height: 70,
                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(71, 33, 65, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Stack(
                    children: [
                      Center(
                        child: Text(
                          "Track5",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                const SizedBox(height: 20),
                InkWell(
              onTap: () {
                //what do after click button
              }, 
                child:Container(
                  height: 70,
                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(71, 33, 65, 243),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Stack(
                    children: [
                      Center(
                        child: Text(
                          "Track6",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




