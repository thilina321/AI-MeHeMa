import 'package:flutter/material.dart';
import 'package:projectmehema/chatbot/chatgpt/chat_screen.dart';
import 'package:projectmehema/chatbot/lds10/chatbot.dart';

class SelectBot extends StatefulWidget {
  const SelectBot({super.key});

  @override
  State<SelectBot> createState() => _SelectBotState();
}

class _SelectBotState extends State<SelectBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Tng wjYH peÜ fndÜ f;dard.kak",
          style: TextStyle(fontFamily: "FM-Gemunu", fontSize: 35),
        )),
        body: Column(
          children: [
            const SizedBox(height: 300),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatBot()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 80),
                  ),
                  child: const Text("Chatbot AI MeHeMa",
                      style: TextStyle(
                        fontFamily: 'arial',
                        fontSize: 18,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(180, 80),
                  ),
                  child: const Text("Chatbot (English)",
                      style: TextStyle(
                        fontFamily: 'arial',
                        fontSize: 18,
                      )),
                ),
              ],
            ),
          ],
        ));
  }
}
