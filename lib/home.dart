import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectmehema/chatbot/selectBot.dart';
import 'package:projectmehema/login.dart';
import 'package:firebase_auth/firebase_auth.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 36, 178, 230),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hello User!', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Color.fromARGB(255, 255, 255, 255)
                  )),
                  subtitle: Text('Have A Nice Day', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white54
                  )),
                  // trailing: const CircleAvatar(
                  //   radius: 30,
                  //   backgroundImage: AssetImage(''),
                  // ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: Color.fromARGB(255, 36, 178, 230),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(200)
                )
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('Videos', CupertinoIcons.play_rectangle, Colors.deepOrange),
                  itemDashboard('Mucis', CupertinoIcons.music_note, Colors.green),
                  itemDashboard('Talk to me', CupertinoIcons.person_2, Colors.purple),
                  //itemDashboard('Chatbot', CupertinoIcons.chat_bubble_2, Colors.brown),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SelectBot()));
                    },
                    child: const Text('Chatbot'),
                  ),
                  itemDashboard('Exersice', CupertinoIcons.sportscourt, Colors.indigo),
                  itemDashboard('Game', CupertinoIcons.gamecontroller, Colors.pinkAccent),
                  itemDashboard('Upload', CupertinoIcons.add_circled, Colors.teal),
                  itemDashboard('About', CupertinoIcons.question_circle, Colors.blue),
                ],
              ),
            ),
            
          ),
          const SizedBox(height: 20),
          LogoutOption(),
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background) => Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle,
          ),
          child: Icon(iconData, color: Colors.white)
        ),
        const SizedBox(height: 8),
        Text(title.toUpperCase(), style: Theme.of(context).textTheme.titleMedium)
      ],
    ),
    
  );

 Row LogoutOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () async {
            try {
              await FirebaseAuth.instance.signOut().then((value){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Login()));
            });
            } catch (e) {
              print(e);
            }
            // await FirebaseAuth.instance.signOut().then((value){
            //   print("Signed Out");
            //   Navigator.push(context,
            //   MaterialPageRoute(builder: (context) => Login()));
            // });
            setState(() {
              // ignore: avoid_print
              print("Signed Out");
            });
          },
          child: const Text('Logout'),
        ),
      ],
    ); 
}
}