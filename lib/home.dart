import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectmehema/about/about.dart';
import 'package:projectmehema/chatbot/select_bot.dart';
import 'package:projectmehema/doc_details/doc_list.dart';
import 'package:projectmehema/game/main_ui.dart';
import 'package:projectmehema/listening/audio/music_emotion_choice.dart';
//import 'package:projectmehema/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projectmehema/painting/main_ui.dart';

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
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 36, 178, 230),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(200),
                bottomLeft: Radius.circular(200),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Center(
                      child: Text('iqn ojila fõjdæ',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 50,
                                fontFamily: 'FM-Gemunu', //Suba Dawasak Wewa
                              ))),
                  subtitle: Center(
                      child: Text('idorfhka ms<s.ksuq',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Colors.white54,
                                  fontFamily: 'FMDerana',
                                  fontSize: 25))), //Sadarayen piliganimu
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
            color: const Color.fromARGB(255, 36, 178, 230),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(200)
                // )
              ),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('peÜ fndÜ', CupertinoIcons.chat_bubble_2,
                      Colors.purple, //Chatbot
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectBot()));
                  }),
                  itemDashboard('ijka', CupertinoIcons.music_note,
                      Colors.deepOrange, //Mindful Listening
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SelectEmotion()));
                  }),
                  itemDashboard('is;a;ï', CupertinoIcons.paintbrush,
                      Colors.indigo, //Relax Painting
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RelaxPainting()));
                  }),
                  itemDashboard('fi,a,ï', CupertinoIcons.gamecontroller,
                      Colors.pinkAccent, //Fun & Play
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FunGame()));
                  }),
                  itemDashboard('jD;a;Sh Wmldr', CupertinoIcons.person,
                      Colors.teal, //Professional Help
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DocList()));
                  }),
                  itemDashboard('wms .ek', CupertinoIcons.question_circle,
                      Colors.blue, //About
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const About()));
                  }),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
          logOutOption(),
        ],
      ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background,
          VoidCallback onPressed) =>
      Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Theme.of(context).primaryColor.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(iconData, color: Colors.white),
            ),
            const SizedBox(height: 8),
            // ignore: unnecessary_null_comparison
            onPressed == null
                ? const SizedBox()
                : TextButton(
                    onPressed: onPressed,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'FM-Bindumathi',
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    )),
          ],
        ),
      );

  Row logOutOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () async {
            try {
              await FirebaseAuth.instance.signOut().then((value) {
                // Navigator.push(context,
                // MaterialPageRoute(builder: (context) => const Login()));
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/login', (Route<dynamic> route) => false);
              });
            } catch (e) {
              // ignore: avoid_print
              print(e);
            }
            setState(() {
              // ignore: avoid_print
              print("Signed Out");
            });
          },
          child: const Text(
            'bj;a jkak',
            style: TextStyle(
              fontFamily: "FM-Gemunu",
              fontSize: 20,
            ),
          ), //Logout
        ),
      ],
    );
  }
}
